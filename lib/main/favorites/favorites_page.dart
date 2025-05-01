import 'package:clothes_shop_project/main/catalog/filters_page.dart';
import 'package:clothes_shop_project/main/home/models/product.dart';
import 'package:clothes_shop_project/widgets/catalog/catalog_tab_widget.dart';
import 'package:clothes_shop_project/widgets/favorites/discount_favorites_widget.dart';
import 'package:clothes_shop_project/widgets/favorites/error_favorites_widget.dart';
import 'package:clothes_shop_project/widgets/favorites/full_favorites_widget.dart';
import 'package:clothes_shop_project/widgets/favorites/simple_favorites_widget.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String selectedSortOption = 'Price: lowest to high';

  final List<String> sortOptions = [
    'Popular',
    'Newest',
    'Customer review',
    'Price: lowest to high',
    'Price: highest to low',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showSortBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.2,
          maxChildSize: 0.6,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                controller: scrollController,
                itemCount: sortOptions.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }
                  String option = sortOptions[index - 1];
                  bool isSelected = selectedSortOption == option;

                  return ListTile(
                    title: Text(
                      option,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? Colors.red : Colors.black,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedSortOption = option;
                      });
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget buildProductGrid() {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      children: [
        FullFavoritesWidget(
          product: Product (
              imagePath: 'assets/images/favorites/favorit1.png',
              type: 'LIME',
              title: 'Shirt',
              price:'10\$',
              color: 'Blue',
              size: 'L',
              oldPrice: '', newPrice: '', discount: ''
          ),
        ),
        SimpleFavoritesWidget(
          product: Product (
              imagePath: 'assets/images/favorites/favorit2.png',
              type: 'Mango',
              title: 'Longsleeve Violeta',
              price:'46\$',
              color: 'Orange',
              size: 'S',
              oldPrice: '', newPrice: '', discount: ''
          ),
        ),
        ErrorFavoritesWidget(
          product: Product (
              imagePath: 'assets/images/favorites/favorit1.png',
              type: 'Mango',
              title: 'T-Shirt SPANISH',
              price:'9\$',
              color: 'Orange',
              size: 'S',
              oldPrice: '', newPrice: '', discount: ''
          ),
        ),
        DiscountFavoritesWidget(
          product: Product (
              imagePath: 'assets/images/favorites/favorit4.png',
              type: '&Berries',
              title: 'T-Shirt',
              newPrice:'39\$',
              oldPrice: '55\$',
              discount: '-20%',
              color: 'Black',
              size: 'S', price: '',

          ),
        ),


      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Women’s tops',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Material(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              dividerHeight: 0,
              indicator: BoxDecoration(),
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              tabAlignment: TabAlignment.start,
              tabs: const [
                Tab(child: CatalogTabWidget(title: 'Summer')),
                Tab(child: CatalogTabWidget(title: 'T-Shirts')),
                Tab(child: CatalogTabWidget(title: 'Shirts')),
                Tab(child: CatalogTabWidget(title: 'Sleeveless')),
              ],
            ),
          ),
          // Filters and Sort bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FiltersPage()),
                          );
                        },
                        icon: Icon(Icons.filter_list),
                      ),
                      Text(
                        'Filters',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: _showSortBottomSheet,
                    child: Row(
                      children: [
                        const Icon(Icons.sort, color: Colors.black),
                        const SizedBox(width: 4),
                        Text(
                          selectedSortOption,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.view_module, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                buildProductGrid(),
                buildProductGrid(),
                buildProductGrid(),
                buildProductGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
