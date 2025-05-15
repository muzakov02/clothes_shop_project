import 'package:clothes_shop_project/main/bag/payment_page/new_card_bottom_sheet.dart';
import 'package:clothes_shop_project/main/bag/payment_page/widget/mastercard_widget.dart';
import 'package:clothes_shop_project/main/bag/payment_page/widget/visa_widget.dart';
import 'package:clothes_shop_project/models/card.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedCard = 'mastercard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment methods',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Metropolis', color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your payment cards',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(height: 20),
            Opacity(
              opacity: selectedCard == 'mastercard' ? 1.0 : 0.3,
              child: MastercardWidget(
                kard: Kard(
                    number: '8600140411213947',
                    date: '05/23',
                    cvv: 'cvv'),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: selectedCard == 'mastercard',
                  onChanged: (bool? value) {
                    setState(() {
                      selectedCard = 'mastercard';
                    });
                  },
                ),
                Text(
                  'Use as default payment method',
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 10),
            Opacity(
              opacity: selectedCard == 'visa' ? 1.0 : 0.3,
              child: VisaWidget(
                kard: Kard(
                    number: '* * * *  * * * *  * * * *  4546',
                    date: '11/22',
                    cvv: 'cvv'),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: selectedCard == 'visa',
                  onChanged: (bool? value) {
                    setState(() {
                      selectedCard = 'visa';
                    });
                  },
                ),
                Text(
                  'Use as default payment method',
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          showDragHandle: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(34)),
                          ),
                          builder: (context) {
                            return DraggableScrollableSheet(
                              initialChildSize: 0.65,
                              maxChildSize: 0.95,
                              minChildSize: 0.5,
                              expand: false,
                              builder: (context, scrollController) {
                                return SingleChildScrollView(
                                  controller: scrollController,
                                  child: NewCardBottomSheet(), // sizning widget
                                );
                              },
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
