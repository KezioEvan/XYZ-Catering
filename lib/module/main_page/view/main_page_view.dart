import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  Widget build(context, MainPageController controller) {
    controller.view = this;

    const List<Widget> tabs = [
      HomePageView(),
      ProfileView(),
      FavoriteView(),
      ProfileView(),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: tabs,
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: greenEmerland,
          selectedItemColor: greenSageColor,
          unselectedItemColor: Colors.white,
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "",
                backgroundColor: Color(0xFF1B7C5C)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "",
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "",
              backgroundColor: Color.fromRGBO(239, 83, 80, 1),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "",
                backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }

  @override
  State<MainPageView> createState() => MainPageController();
}
