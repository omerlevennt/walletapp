// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balence;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  const MyCard(
      {Key? key,
      required this.balence,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 350,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Balece",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Image.asset(
                    "lib/icons/visa.png",
                    height: 60,
                  ),
                ],
              ),
              Text(
                "\$" + balence.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //card info
                  Text(
                    cardNumber.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  //card expiry date
                  Text(
                    expiryMonth.toString() + "/" + expiryYear.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
