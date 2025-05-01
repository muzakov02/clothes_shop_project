import 'package:clothes_shop_project/main/home/models/product.dart';
import 'package:flutter/material.dart';


class BagWidget extends StatefulWidget {
  final Product product;

  const BagWidget({super.key, required this.product});

  @override
  State<BagWidget> createState() => _BagWidgetState();
}

class _BagWidgetState extends State<BagWidget> {
  int _count = 1;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 1) _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = _count * int.parse(widget.product.price);

    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductInfoPage(saleProduct: saleProduct),
        //   ),
        // );
      },
      child: Container(
        width: double.infinity,
        height: 104,
        margin: const EdgeInsets.only(right: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.product.imagePath,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                height: 184,
                width: double.infinity,
              ),
            ),
            Column(
              children: [
                Text(
                  widget.product.type,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.grey),
                ),
                Text(
                  widget.product.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Color:',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        Text(
                          widget.product.color,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Size:',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        Text(
                          widget.product.size,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: _decrement,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '$_count',
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: _increment,
                    ),
                    const SizedBox(width: 32),
                    Text(
                      '$totalPrice ',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
