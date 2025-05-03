import 'package:flutter/material.dart';

class RatingBottomSheet extends StatefulWidget {
  const RatingBottomSheet({super.key});

  @override
  State<RatingBottomSheet> createState() => _RatingBottomSheetWidgetState();
}

class _RatingBottomSheetWidgetState extends State<RatingBottomSheet> {
  int _rating = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'What is you rate?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(5, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _rating = index + 1;
                    });
                  },
                  child:Stack(
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 36.0,
                        color: Colors.grey, // Qora outline
                      ),
                      Icon(
                        Icons.star,
                        size: 36.0,
                        color: index < _rating ? Colors.amber : Colors.transparent, // To‘ldirish
                      ),
                    ],
                  ),

                );
              }),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'Please share your opinion\nabout the product',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your review',
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 104,
              width:130,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.white)
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: (32),
                        backgroundColor: Colors.red,
                        child: Icon(Icons.camera_alt, color: Colors.white)),
                  ),
                  SizedBox(width: 8.0),
                  Text('Add your photos', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                "SEND REVIEW",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ]),
    );
  }
}
