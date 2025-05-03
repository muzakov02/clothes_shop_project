import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class DeliveryWidget extends StatelessWidget {
  final String image;


  const DeliveryWidget({
    super.key,
  required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: Colors.white)
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SvgPicture.asset(
              image,
            ),
            Text('2-3 days',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
