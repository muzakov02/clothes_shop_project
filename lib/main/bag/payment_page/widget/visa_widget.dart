import 'package:clothes_shop_project/models/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisaWidget extends StatelessWidget {
  final Kard kard;

  const VisaWidget({super.key, required this.kard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey, // faqat shu yerda color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  'assets/icons/visa.svg',
                ),
              ),
              SizedBox(
                height: 10,
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
                height: 20,
              ),
              SvgPicture.asset(
                'assets/icons/chip.svg',
              ),
              SizedBox(
                height: 20,
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
                ],
              ),
            ],
          )),
    );
  }
}
