import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/item_dismissible/item_dismissible.dart';

class VegetarianPageView extends StatefulWidget {
  final Map? item;
  const VegetarianPageView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, VegetarianPageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetarian"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("products")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.docs.length,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;

                      return ItemDismissible(
                        onConfirm: () => controller.doDelete(item['id']),
                        child: GestureDetector(
                          // onTap: () async {
                          //   await Get.to(
                          //     VegetarianPageView(
                          //       item: item,
                          //     ),
                          //   );
                          // },
                          child: Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                backgroundImage: NetworkImage(
                                  item['photo'],
                                ),
                              ),
                              title: Text(item['product_name']),
                              subtitle: Text("${item['price']}"),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<VegetarianPageView> createState() => VegetarianPageController();
}
