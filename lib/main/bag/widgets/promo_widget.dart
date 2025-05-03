import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  final String percentage;
  final String type;
  final String title;
  final String day;
  final String background;

  const PromoWidget({
    super.key,
    required this.percentage,
    required this.type,
    required this.title,
    required this.day,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    final Color bgColor =
        Color(int.parse(background.replaceFirst('#', '0xFF')));

    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.white)],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.only(right: 10),
              width: 80,
              height: 80,
              child: Center(
                child: Text(
                  percentage,
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  '$day days remaining',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => HomePage()));
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
                    'Apply',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
