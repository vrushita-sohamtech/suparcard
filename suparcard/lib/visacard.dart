import 'package:flutter/material.dart';

class supercard extends StatefulWidget {
  const supercard({Key? key}) : super(key: key);

  @override
  State<supercard> createState() => _supercardState();
}

class _supercardState extends State<supercard> {
  List colors = [
    Colors.teal.shade400,
    Colors.green.shade300,
    Colors.purple.shade300,
    Colors.blue.shade200,
    Colors.orange.shade200,
    Colors.brown.shade400,
    Colors.deepPurpleAccent,
  ];

 List icon = [
   'visa.png',
   'mastercard.png',
   'visa.png',
   'visa.png',
   'mastercard.png',
   'mastercard.png',
   'visa.png',
 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(
          child: Text(
            'Super Card',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card(
                color: Colors.teal.shade400,
                cardExpire: '02 / 02',
                value: '\$ 456.32',
                cardNumber: '  * * * *        * * * *        * * * *        3 3 4 5  ',
              ),
              card(
                color: Colors.green.shade300,
                cardExpire: '02 / 08',
                value: '\$ 365.78',
                cardNumber: '  * * * *        * * * *        * * * *        5 7 4 6  ',
              ),
              card(
                color: Colors.purple.shade300,
                cardExpire: '02 / 07',
                value: '\$ 678.23',
                cardNumber: '  * * * *        * * * *        * * * *        4 5 6 6  ',
              ),
              card(
                color: Colors.blue.shade200,
                cardExpire: '02 / 01',
                value: '\$ 369.57',
                cardNumber: '  * * * *        * * * *        * * * *        5 7 5 4  ',
              ),
              card(
                color: Colors.orange.shade200,
                cardExpire: '02 / 04',
                value: '\$ 678.46',
                cardNumber: '  * * * *        * * * *        * * * *        3 4 6 3  ',
              ),
              card(
                color: Colors.brown.shade400,
                cardExpire: '02 / 09',
                value: '\$ 354.64',
                cardNumber: '  * * * *        * * * *        * * * *        3 7 5 9  ',
              ),
              card(
                color: Colors.deepPurpleAccent,
                cardExpire: '02 / 12',
                value: '\$ 236.79',
                cardNumber: '  * * * *        * * * *        * * * *        7 5 8 5  ',
              ),
              addButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  card({required this.color, required this.cardNumber, required this.cardExpire, required this.value});
  final Color color;
  final String cardNumber;
  final String cardExpire;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0),),
        child: Container(
          height: 200,
          width: 500,
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/visa.png',
                    height: 85.0,
                    width: 78.0,
                  ),
                  Text(
                    '$cardExpire',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),),
                ],
              ),
              Text(
                '$value',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24),),
              Text(
                '$cardNumber',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
            ],
          ),
        ),
      );
    }
}


class addButton extends StatefulWidget {

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(onPressed: () {

            },
                child: Text(
                  '+ Add Card',
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.only(left: 100, right: 100, top: 20,bottom: 20),),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black12)
                  )
                )
              ),
            ),
          ],
        ),
    );
  }
}












