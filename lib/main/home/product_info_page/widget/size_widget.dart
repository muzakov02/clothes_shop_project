import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  final void Function(String selectedSize)? onSizeSelected;
  final VoidCallback? onAddToCart;

  const SizeWidget({
    Key? key,
    this.onSizeSelected,
    this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizes = ["XS", "S", "M", "L", "XL"];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Select size",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: sizes.map((size) {
              return OutlinedButton(
                onPressed: () {
                  if (onSizeSelected != null) {
                    onSizeSelected!(size);
                  }
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(size,
                  style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          ListTile(
            title: const Text("Size info"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // boshqa sahifaga yo‘naltirish
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (onAddToCart != null) {
                onAddToCart!();
              }
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size.fromHeight(48),
            ),
            child: const Text(
              "ADD TO CART",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
