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
      debugShowCheckedModeBanner: false,
    );
  }
}

class CouterArea extends StatefulWidget {
  const CouterArea({Key? key}) : super(key: key);

  @override
  _CouterAreaState createState() => _CouterAreaState();
}

class _CouterAreaState extends State<CouterArea> {
  int _counter = 0;

  void onCounterButtonPressed() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('กดปุ่มถ้าต้องการเพิ่มตัวนับ'),
            Text(
              '$_counter', // string expression
              // _counter.toString(), // string method
              style: TextStyle(fontSize: 60, color: Colors.red),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onCounterButtonPressed,
        child: Icon(Icons.add),
      ),
    );
  }
}
