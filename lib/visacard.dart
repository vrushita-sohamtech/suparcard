import 'dart:math';
import 'package:flutter/material.dart';
import 'cards.dart';

class SuperCard extends StatefulWidget {
  @override
  State<SuperCard> createState() => _SuperCardState();
}
class _SuperCardState extends State<SuperCard> {
  List<Widget> strings = [];
  ScrollController scrollController = ScrollController();
  List colors = [
    Colors.teal.shade400,
    Colors.green.shade300,
    Colors.purple.shade300,
    Colors.blue.shade200,
    Colors.orange.shade200,
  ];
  Color randomColor() {
    return colors[random.nextInt(5)];
  }

  List value = [
    '\$ 6.0',
    '\$ 4.5',
    '\$ 7.8',
    '\$ 9.0',
    '\$ 1.4',
  ];
  randomValue() {
    return value[random.nextInt(5)];
  }

  List number = [
    '* * * *   * * * *   * * * *   4 5 6 6',
    '* * * *   * * * *   * * * *   6 2 4 1',
    '* * * *   * * * *   * * * *   3 5 2 2',
    '* * * *   * * * *   * * * *   2 9 1 3',
    '* * * *   * * * *   * * * *   7 7 0 4',
  ];
  randomNumber() {
    return number[random.nextInt(5)];
  }

  List expire = [
    '02/95 ',
    '06/92',
    '04/91',
    '03/99',
    '08/91',
  ];
  randomExpire() {
    return expire[random.nextInt(5)];
  }

  List icon = [
    'assets/mastercard.png',
    'assets/visa.png',
  ];
  randomIcon() {
    return icon[random.nextInt(2)];
  }
  Random random = Random();

  void _addCards() {
    setState(() {
      print('card');
      strings.add(
        cards(
          color: randomColor(),
          cardNumber: randomNumber(),
          cardExpire: randomExpire(),
          value: randomValue(),
        ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                        shrinkWrap: true,
                        controller: scrollController,
                        children: strings.toList(),
                      ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  _addCards();
                  scrollController.animateTo(
                      scrollController.position.maxScrollExtent,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeOut,
                  );
                },
                child: Text(
                  ' Add Card',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                     EdgeInsets.only(
                        left: 90, right: 90, top: 10, bottom: 10,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.black38)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


