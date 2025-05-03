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
            child: Text('Add new card',
              style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),),
          ),
          SizedBox(height: 20,),
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
          SizedBox(height: 20,),
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
          SizedBox(height: 20,),
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
          SizedBox(height: 20,),
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
          SizedBox(height: 20,),
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
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
              ),
              child: Text(
                'ADD CARD',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
