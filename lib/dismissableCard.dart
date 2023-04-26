// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:suparcard/visacard.dart';
// import 'cards.dart';
//
//
// class DismissableCard extends StatefulWidget {
//   const DismissableCard({Key? key}) : super(key: key);
//
//   @override
//   State<DismissableCard> createState() => _DismissableCardState();
// }
//
// class _DismissableCardState extends State<DismissableCard> {
//   List<Widget> strings = [];
//   remove(index){
//     setState(() {
//       strings.removeAt(index);
//     });
//   }
//   List colors = [
//     Colors.teal.shade400,
//     Colors.green.shade300,
//     Colors.purple.shade300,
//     Colors.blue.shade200,
//     Colors.orange.shade200,
//     Colors.brown.shade400,
//     Colors.deepPurpleAccent,
//   ];
//   Color randomColor(){
//     return colors[Random().nextInt(5)];
//   }
//
//   List value = [
//     '\$ 6.0',
//     '\$ 4.5',
//     '\$ 7.8',
//     '\$ 9.0',
//     '\$ 1.4',
//     '\$ 6.7',
//     '\$ 4.7',
//   ];
//   randomValue() {
//     return value[Random().nextInt(5)];
//   }
//
//   List number = [
//     '* * * *   * * * *   * * * *   4 5 6 6',
//     '* * * *   * * * *   * * * *   6 2 4 1',
//     '* * * *   * * * *   * * * *   3 5 2 2',
//     '* * * *   * * * *   * * * *   2 9 1 3',
//     '* * * *   * * * *   * * * *   7 7 0 4',
//     '* * * *   * * * *   * * * *   9 4 6 7',
//     '* * * *   * * * *   * * * *   1 5 8 0',
//   ];
//   randomNumber(){
//     return number[Random().nextInt(5)];
//   }
//
//   List expire = [
//     '02 / 02',
//     '01 / 01',
//     '03 / 04',
//     '02 / 03',
//     '01 / 03',
//     '01 / 02',
//     '04 / 02',
//   ];
//   randomExpire(){
//     return expire[Random().nextInt(5)];
//   }
//
//   List icon = [
//     'assets/mastercard.png',
//     'assets/visa.png',
//   ];
//   randomIcon(){
//     return icon[Random().nextInt(2)];
//   }
//
//   int card = -1;
//   void _addCards() {
//     setState(() {
//       // index = random.nextInt(5);
//       card++;
//       print('$card');
//       strings.add(
//         cards(
//           color: randomColor(),
//           cardNumber: randomNumber(),
//           cardExpire: randomExpire(),
//           value: randomValue(),
//         ),
//       );
//     }
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//                 key: UniqueKey(),
//                 onDismissed: (direction){
//                    strings.removeLast();
//                   },
//                 background: Container(
//                   alignment: Alignment.centerRight,
//                   color:  Colors.red,
//                   child: Icon(Icons.delete, color: Colors.white, size: 20.0,),
//                 ),
//                 child: SuperCard(),
//             );
//   }
// }
