import 'package:clothes_shop_project/widgets/elevation_button_widget.dart';
import 'package:flutter/material.dart';

class NewCardBottomSheet extends StatefulWidget {
  const NewCardBottomSheet({super.key});

  @override
  State<NewCardBottomSheet> createState() => _NewCardBottomSheetState();
}

class _NewCardBottomSheetState extends State<NewCardBottomSheet> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Center(
            child: Text(
              'Add new card',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Metropolis',
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(
              labelText: ' Name on card',
              labelStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(
              labelText: 'Card number',
              labelStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(
              labelText: ' Expire Date',
              labelStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(
              labelText: ' CVV',
              labelStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
                'Set as default payment method',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
         ElevationButtonWidget(text: 'ADD CARD',page: null,)
        ],
      ),
    );
  }
}
