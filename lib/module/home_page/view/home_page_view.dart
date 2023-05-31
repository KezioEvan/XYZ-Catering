import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  Widget build(context, HomePageController controller) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi, Cateringers 👋🏻',
                            style: greenEmerlandTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Penuhi kebutuhan makan harian kamu dengan\nXYZ Catering',
                          style: greenSageColorTextStyle.copyWith(
                              fontSize: 14, fontWeight: regular),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Builder(builder: (context) {
                        List images = [
                          "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                          "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                          "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                          "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                        ];

                        return CarouselSlider(
                          options: CarouselOptions(
                            height: 160.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                          ),
                          items: images.map((imageUrl) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(6.0),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        imageUrl,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Categories',
                              style: greenEmerlandTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductListPageView(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'View all Product Here',
                                  style: greenSageColorTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.navigate_next_outlined,
                                color: greenSageColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const VegetarianPageView(),
                                ),
                              );
                            },
                            child: Container(
                              width: 170,
                              height: 44,
                              decoration: BoxDecoration(
                                color: greenFadedolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegetarian',
                                  style: greenEmerlandTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NonVegetarianPageView(),
                                ),
                              );
                            },
                            child: Container(
                              width: 170,
                              height: 44,
                              decoration: BoxDecoration(
                                color: greenFadedolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Non Vegetarian',
                                  style: greenEmerlandTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Popular Catering',
                          style: greenEmerlandTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      PopularFood(
                          image: 'assets/image/img_food4.png',
                          title: 'Chicken Rice Bowl',
                          price: '20000',
                          location: 'Kemanggisan'),
                      PopularFood(
                          image: 'assets/image/img_food1.png',
                          price: '20000',
                          title: 'Complete Chicken Package',
                          location: 'Syahdan'),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HomePageView> createState() => HomePageController();
}
