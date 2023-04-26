import 'package:flutter/material.dart';
import 'package:suparcard/visacard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: supercard(),
    );
  }
}

class visa extends StatefulWidget {
  @override
  State<visa> createState() => _visaState();
}
class _visaState extends State<visa> {
  @override
  Widget build(BuildContext context) {
    return supercard();
  }
}

