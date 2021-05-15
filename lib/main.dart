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
      home: FirstScreen(), // get FirstScreen in here
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // icon drawer
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('First Screen'),
        actions: <Widget>[
          // icon search
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container( // ini bisa diluar Center
          child: Text(
            'Hi',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          // color: Colors.blue,
          width: 200,
          height: 100,
          padding: EdgeInsets.only(left: 80, top: 27),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(3, 6),
                blurRadius: 15,
              ),
            ],
            border: Border.all(color: Colors.amber, width: 2),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
