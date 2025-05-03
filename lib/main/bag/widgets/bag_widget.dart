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
        margin: const EdgeInsets.only(right: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Qo‘shildi
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.product.imagePath,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                height: 104,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'Color: ',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                      Text(
                        widget.product.color,
                        style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Size: ',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                      Text(
                        widget.product.size,
                        style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.remove), onPressed: _decrement),
                      Text('$_count', style: TextStyle(fontSize: 18)),
                      IconButton(icon: Icon(Icons.add), onPressed: _increment),
                    ],
                  ),
                ],
              ),
            ),
            Column(

              children: [
                Icon(Icons.more_vert),
SizedBox(height: 28,),
                Text(
                  '$totalPrice',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
