import 'package:clothes_shop_project/main/home/models/product.dart';
import 'package:clothes_shop_project/main/rating/rating_page.dart';
import 'package:clothes_shop_project/widgets/main_widgets/sale_widgets.dart';
import 'package:clothes_shop_project/widgets/product_info_widget/colors_widget.dart';
import 'package:clothes_shop_project/widgets/product_info_widget/size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class ProductInfoPage extends StatelessWidget {
  final Product product;

  const ProductInfoPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            product.title,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/share.svg',
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.imagePath,
            height: 413,
            width: double.infinity,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: ListView(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) {
                            return SizeWidget(
                              onSizeSelected: (selectedSize) {},
                              onAddToCart: () {
                                print("Add to cart bosildi");
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text("Size"),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) {
                            return ColorsWidget(
                              onSizeSelected: (selectedSize) {},
                              onAddToCart: () {
                                print("Add to cart bosildi");
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text("Colors"),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'H&M',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      product.newPrice,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
                Text(
                  product.type,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: 5,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 16.0,
                      direction: Axis.horizontal,
                    ),
                    SizedBox(width: 4),
                    Text("(10)", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Text(
                  'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const Divider(),
                ListTile(
                    title: Text("Shipping info"),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => RatingPage()),);
                      },
                      icon: Icon(Icons.arrow_forward_ios, size: 16),
                    )),
                const Divider(),
                ListTile(
                  title: Text("Support"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
                const Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'You can also like this',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '12 items',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ))
                  ],
                ),
                SizedBox(
                  height: 260,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SaleWidget(
                        product: Product(
                          imagePath: 'assets/images/main/clothe1.png',
                          type: 'Dorothy Perkins',
                          title: 'Evening Dress',
                          oldPrice: '15\$',
                          newPrice: '12\$',
                          discount: '-20% ',
                          price: '1',
                          color: '1',
                          size: '1',
                        ),
                      ),
                      SaleWidget(
                        product: Product(
                          imagePath: 'assets/images/main/clothe2.png',
                          type: 'Sitlly',
                          title: 'Sport Dress',
                          oldPrice: '22\$',
                          newPrice: '19\$',
                          discount: '-15% ',
                          price: '',
                          color: '',
                          size: '',
                        ),
                      ),
                      SaleWidget(
                        product: Product(
                          imagePath: 'assets/images/main/clothe3.png',
                          type: 'Dorothy Perkins',
                          title: 'Sport Dress',
                          oldPrice: '14\$',
                          newPrice: '12\$',
                          discount: '-20% ',
                          price: '',
                          color: '',
                          size: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // savatchaga qo'shish
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: const Size.fromHeight(50),
          ),
          child: const Text(
            "ADD TO CART",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
