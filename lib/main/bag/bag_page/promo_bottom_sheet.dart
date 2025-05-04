import 'package:clothes_shop_project/main/bag/bag_page/widget/promo_widget.dart';
import 'package:flutter/material.dart';

class PromoBottomSheet extends StatefulWidget {
  const PromoBottomSheet({super.key});

  @override
  State<PromoBottomSheet> createState() => _PromoBottomSheetState();
}

class _PromoBottomSheetState extends State<PromoBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0).copyWith(top: 50.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .05),
                  offset: Offset(0, 1),
                  blurRadius: 8,
                  spreadRadius: 0,
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: TextFormField(
              obscureText: true,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                  labelText: ' Enter your promo code',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(36.0)),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: CircleAvatar(
                      radius: (16),
                      backgroundColor: Colors.black,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Your Promo Codes',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Metropolis',
                color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          PromoWidget(
              percentage: '10%',
              type: 'Personal offer',
              title: 'mypromocode2020',
              day: '6',
              background: '#9B9B9B'),
          PromoWidget(
              percentage: '10%',
              type: 'Personal offer',
              title: 'mypromocode2020',
              day: '6',
              background: '#9B9B9B'),
          PromoWidget(
              percentage: '10%',
              type: 'Personal offer',
              title: 'mypromocode2020',
              day: '6',
              background: '#9B9B9B'),
          PromoWidget(
              percentage: '10%',
              type: 'Personal offer',
              title: 'mypromocode2020',
              day: '6',
              background: '#9B9B9B'),
          PromoWidget(
              percentage: '10%',
              type: 'Personal offer',
              title: 'mypromocode2020',
              day: '6',
              background: '#9B9B9B'),
          PromoWidget(
              percentage: '10%',
              type: 'Personal offer',
              title: 'mypromocode2020',
              day: '6',
              background: '#9B9B9B'),
        ],
      ),
    );
  }
}
