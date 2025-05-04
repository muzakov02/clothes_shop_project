import 'package:clothes_shop_project/main/profil/widget/order_tab_widget.dart';
import 'package:clothes_shop_project/main/profil/widget/orders_widget.dart';
import 'package:clothes_shop_project/models/order.dart';
import 'package:flutter/material.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<MyOrdersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
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
        actions: const [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Orders',
              style: TextStyle(
                fontSize: 34,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelPadding: const EdgeInsets.symmetric(horizontal: 4),
              tabs: [
                Tab(
                  child: OrderTabWidget(
                    title: 'Delivered',
                    isSelected: _tabController.index == 0,
                  ),
                ),
                Tab(
                  child: OrderTabWidget(
                    title: 'Processing',
                    isSelected: _tabController.index == 1,
                  ),
                ),
                Tab(
                  child: OrderTabWidget(
                    title: 'Cancelled',
                    isSelected: _tabController.index == 2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      OrdersWidget(
                        order: Order(
                            orderNumber: '1947034',
                            trackingNumber: 'IW3475453455',
                            quantity: '3',
                            price: '112\$'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OrdersWidget(
                        order: Order(
                            orderNumber: '1947034',
                            trackingNumber: 'IW3475453455',
                            quantity: '3',
                            price: '112\$'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OrdersWidget(
                        order: Order(
                            orderNumber: '1947034',
                            trackingNumber: 'IW3475453455',
                            quantity: '3',
                            price: '112\$'),
                      ),
                    ],
                  ),
                  Center(child: Text("Processing Orders")),
                  Center(child: Text("Cancelled Orders")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
