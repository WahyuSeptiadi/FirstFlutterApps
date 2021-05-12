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
          // child: Heading(text: 'Hello, world!'), // Custom text with Heading
          child: BiggerText(text: 'BIGGER'), // Custom text with BiggerText
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

class BiggerText extends StatefulWidget { // state yang bisa berubah-ubah
  final String text; // BUKAN STATE ASLI dari StatefulWidget

  const BiggerText({this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}


class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0; // STATE ASLI dari StatefulWidget

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: Text("Zoom In"),
          onPressed: () {
            setState(() { // Mengubah nilai state harus dilakukan pada fungsi setState
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
