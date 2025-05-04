import 'package:clothes_shop_project/models/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MastercardWidget extends StatelessWidget {
  final Kard kard;

  const MastercardWidget({super.key, required this.kard});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      decoration: BoxDecoration(
        color: Colors.black, // faqat shu yerda color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                'assets/icons/chip.svg',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                kard.number,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    fontFamily: 'Metropolis',
                    color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Card Holder Name',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            fontFamily: 'Metropolis',
                            color: Colors.white),
                      ),
                      Text(
                        'Jennyfer Doe',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Metropolis',
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Expiry Date',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            fontFamily: 'Metropolis',
                            color: Colors.white),
                      ),
                      Text(
                        kard.date,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Metropolis',
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/icons/mastercard.svg',
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
