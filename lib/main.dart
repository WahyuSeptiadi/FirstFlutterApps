import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Heading(text: 'Hello, world!'), // Custom text with Heading
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget { // state yang tidak bisa berubah (immutable)
  final String text; // maka dari itu state harus dibuat FINAL

  Heading({this.text}); // dan value di set di constructor nya

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
