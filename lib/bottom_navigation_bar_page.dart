import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nectar_apps/Cart/cart_page.dart';
import 'package:nectar_apps/account/account_page.dart';
import 'package:nectar_apps/explore/explore_page.dart';
import 'package:nectar_apps/favourite/favourite_page.dart';

import 'home/home_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final pages = [
    HomePage(),
    ExplorePage(),
    CartPage(),
    FavouritePage(),
    AccountPage(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: HexColor("#FEFEFE"),
        extendBody: true,
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.1,
          fixedColor: HexColor("#53B175"),
          onTap: (idx){
            setState(() {
              index = idx;
            });
          },
          currentIndex: index,
          unselectedLabelStyle: TextStyle(color: Colors.black,),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(color: HexColor("#53B175")),
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.shopping_basket_outlined
                  ),
              label: 'Shop'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.manage_search_outlined
                  ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.shopping_cart_outlined
                  ),
              label: 'Cart'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.favorite_border_outlined
                  ),
              label: 'Favorite'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.person_2_outlined
                  ),
              label: 'Account'
            )
          ],
        )
        // NavigationBar(
        //   backgroundColor: Colors.white,
        //   height: 60,
        //   indicatorColor: Colors.white,
        //   selectedIndex: index,
        //   onDestinationSelected: (idx) {
        //     setState(() {
        //       index = idx;
        //     });
        //   },
        //   destinations: [
        //     NavigationDestination(
        //         icon: Icon(
        //           Icons.shopping_basket_outlined,
        //           color: Colors.black,
        //         ),
        //         selectedIcon: Icon(
        //           Icons.shopping_basket_outlined,
        //           color: HexColor("#53B175"),
        //         ),
        //         label: "Shop",
        //     ),
        //     NavigationDestination(
        //         icon: Icon(
        //           Icons.manage_search_outlined,
        //           color: Colors.black,
        //         ),
        //         selectedIcon: Icon(
        //           Icons.manage_search_outlined,
        //           color: HexColor("#53B175"),
        //         ),
        //         label: "Explore"),
        //     NavigationDestination(
        //         icon: Icon(
        //           Icons.shopping_cart_outlined,
        //           color: Colors.black,
        //         ),
        //         selectedIcon: Icon(
        //           Icons.shopping_cart_outlined,
        //           color: HexColor("#53B175"),
        //         ),
        //         label: "Cart"),
        //     NavigationDestination(
        //         icon: Icon(
        //           Icons.favorite_border_outlined,
        //           color: Colors.black,
        //         ),
        //         selectedIcon: Icon(
        //           Icons.favorite_border_outlined,
        //           color: HexColor("#53B175"),
        //         ),
        //         label: "Favorite"),
        //     NavigationDestination(
        //         icon: Icon(
        //           Icons.person_2_outlined,
        //           color: Colors.black,
        //         ),
        //         selectedIcon: Icon(
        //           Icons.person_2_outlined,
        //           color: HexColor("#53B175"),
        //         ),
        //         label: "Shop")
        //   ],
        // ),
    );
  }
}
