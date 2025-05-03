import 'package:clothes_shop_project/main/bag/bag_page.dart';
import 'package:clothes_shop_project/main/categories/shop_page/shop_page.dart';
import 'package:clothes_shop_project/main/favorites/favorites_page.dart';
import 'package:clothes_shop_project/main/home/home_body_page/home_body_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeBodyPage(),
    ShopPage(),
BagPage(),
    FavoritesPage(),
    SizedBox(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: const Color(0xFF9B9B9B),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _currentIndex == 0 ? Colors.red : Color(0xFF9B9B9B),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop.svg',
              color: _currentIndex == 1 ? Colors.red : Color(0xFF9B9B9B),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bag.svg',
              color: _currentIndex == 2 ? Colors.red : Color(0xFF9B9B9B),
            ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/favorit.svg',
              color: _currentIndex == 3 ? Colors.red : Color(0xFF9B9B9B),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profil.svg',
              color: _currentIndex == 4 ? Colors.red :Color(0xFF9B9B9B),
            ),
            label: 'Profile',
          ),
        ],

      ),
    );
  }
}
