import 'dart:math';
import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  cards(
       {required this.value,
        required this.color,
        required this.cardExpire,
        required this.cardNumber,
       });

  final Color color;
  final String cardExpire;
  final String value;
  final String cardNumber;

  List<Widget> strings = [];
  List icon = [
    'assets/mastercard.png',
    'assets/visa.png',
  ];
  randomIcon() {
    return icon[Random().nextInt(2)];
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        child: Icon(Icons.delete,color: Colors.white,),
      ),
        child: Card(
          elevation: 4.0,
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0),
          ),
          child: Container(
            height: 200,
            width: 500,
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      randomIcon(),
                      height: 70.0,
                      width: 70.0,
                    ),
                    Text(
                      cardExpire,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Text(
                  value,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  cardNumber,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
