import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyper_ui/core.dart';

class NonVegetarianPageView extends StatefulWidget {
  final Map? item;
  const NonVegetarianPageView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, NonVegetarianPageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Non Vegetarian"),
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

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item['photo'],
                            ),
                          ),
                          title: Text(item['product_name']),
                          subtitle: Text("${item['price']}"),
                          trailing: SizedBox(
                            width: 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  radius: 12.0,
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () =>
                                          controller.decreaseQty(item),
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 9.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${controller.getQty(item)}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  radius: 12.0,
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () =>
                                          controller.increseQty(item),
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 9.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
      bottomNavigationBar: Wrap(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.black),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Text(
                  "${controller.total}",
                  style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 72,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
              ),
              onPressed: () => controller.checkout(),
              child: const Text("Checkout"),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<NonVegetarianPageView> createState() => NonVegetarianPageController();
}
