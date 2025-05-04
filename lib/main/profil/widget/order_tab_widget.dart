import 'package:flutter/material.dart';

class OrderTabWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  const OrderTabWidget({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Metropolis',
          ),
        ),
      ),
    );
  }
}
