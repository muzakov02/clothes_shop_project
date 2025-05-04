import 'package:clothes_shop_project/models/address.dart';
import 'package:flutter/material.dart';

class FullAddressWidget extends StatefulWidget {
  final Address address;

  const FullAddressWidget({super.key, required this.address});

  @override
  State<FullAddressWidget> createState() => _FullAddressWidgetState();
}

class _FullAddressWidgetState extends State<FullAddressWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.white)]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.address.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: 'Metropolis',
                          color: Colors.red),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.address.adres,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
            Text(
              '${widget.address.city}, ${widget.address.state}, ${widget.address.code}',
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: isLiked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isLiked = newValue ?? false;
                    });
                  },
                ),
                Text(
                  'Use as the shipping address',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
