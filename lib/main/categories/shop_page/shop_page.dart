import 'package:clothes_shop_project/main/categories/shop_page/widget/kids_tab_widget.dart';
import 'package:clothes_shop_project/main/categories/shop_page/widget/men_tab_widget.dart';
import 'package:clothes_shop_project/main/categories/shop_page/widget/women_tab_widget.dart';


import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Center(
          child: Text(
            'Categories',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Metropolis', color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: const [
                Tab(text: 'Women'),
                Tab(text: 'Men'),
                Tab(text: 'Kids'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  WomenTabWidget(
                      type: 'SUMMER SALES',
                      title: 'Up to 50% off',
                      newImage: 'assets/images/categories/women1.png',
                      clotheImage: 'assets/images/categories/women2.png',
                      shoesImage: 'assets/images/categories/women3.png',
                      accesoriesImage: 'assets/images/categories/women4.png'),
                  MenTabWidget(
                      type: 'SUMMER SALES',
                      title: 'Up to 50% off',
                      newImage: 'assets/images/categories/women1.png',
                      clotheImage: 'assets/images/categories/women2.png',
                      shoesImage: 'assets/images/categories/women3.png',
                      accesoriesImage: 'assets/images/categories/women4.png'),
                  KidsTabWidget(
                      type: 'SUMMER SALES',
                      title: 'Up to 50% off',
                      newImage: 'assets/images/categories/women1.png',
                      clotheImage: 'assets/images/categories/women2.png',
                      shoesImage: 'assets/images/categories/women3.png',
                      accesoriesImage: 'assets/images/categories/women4.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

