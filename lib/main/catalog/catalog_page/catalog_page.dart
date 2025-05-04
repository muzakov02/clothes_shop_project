import 'package:clothes_shop_project/main/catalog/catalog_page/widget/catalog_tab_widget.dart';
import 'package:clothes_shop_project/main/catalog/catalog_page/widget/discount_catalog_widget.dart';
import 'package:clothes_shop_project/main/catalog/catalog_page/widget/simple_catalog_widget.dart';
import 'package:clothes_shop_project/main/catalog/filters_page/filters_page.dart';
import 'package:clothes_shop_project/models/product.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage>
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
        SimpleCatalogWidget(
          product: Product(
              imagePath: 'assets/images/catalog/catalog1.png',
              type: 'Mango',
              title: 'T-Shirt SPANISH',
              price: '9\$',
              oldPrice: '',
              newPrice: '',
              discount: '',
              color: '',
              size: ''),
        ),
        DiscountCatalogWidget(
          product: Product(
              imagePath: 'assets/images/catalog/catalog2.png',
              type: 'Dorothy Perkins',
              title: 'Blouse',
              oldPrice: '21\$',
              newPrice: '14\$',
              discount: '-20% ',
              color: '',
              size: '',
              price: ''),
        ),
        SimpleCatalogWidget(
          product: Product(
              imagePath: 'assets/images/catalog/catalog1.png',
              type: 'Mango',
              title: 'T-Shirt SPANISH',
              price: '9\$',
              oldPrice: '',
              newPrice: '',
              discount: '',
              color: '',
              size: ''),
        ),
        DiscountCatalogWidget(
          product: Product(
            imagePath: 'assets/images/catalog/catalog2.png',
            type: 'Dorothy Perkins',
            title: 'Light blouse',
            oldPrice: '14\$',
            newPrice: '12\$',
            discount: '-20% ',
            price: '',
            color: '',
            size: '',
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
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Metropolis',
                color: Colors.black),
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
                Tab(child: CatalogTabWidget(title: 'T-shirts')),
                Tab(child: CatalogTabWidget(title: 'Crop tops')),
                Tab(child: CatalogTabWidget(title: 'Blouses')),
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
                            fontFamily: 'Metropolis',
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
