import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App', // เป็น header title name
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CouterArea(),
    );
  }
}

class CouterArea extends StatefulWidget {
  const CouterArea({Key? key}) : super(key: key);

  @override
  _CouterAreaState createState() => _CouterAreaState();
}

class _CouterAreaState extends State<CouterArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
    );
  }
}
