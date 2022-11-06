import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        debugShowCheckedModeBanner: false,
        home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  String? input;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f3f3),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('First Page'),
      ),
      body: SafeArea(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[250],
                  border: Border.all(color: Color(0x5a0f1b76)),
                ),
                child: TextField(
                    decoration: InputDecoration(
                      hintText: 'How Are you doing?',
                      border: InputBorder.none,
                    ),
                    onChanged: (text) {
                      input = text;
                    }),
              ),
            ),
            SizedBox(height: 100),
            FlatButton(
              height: 100,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xff000000),
                      Colors.blue,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "PASS DATA",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(input: input)));
              },
            ),
          ]))),
    );
  }
}

class SecondPage extends StatelessWidget {
  String? input;

  SecondPage({this.input});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Color(0xff1100ff),
          title: Text('Second Page'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                input!,
                style: TextStyle(
                  color: Color(0xff1100ff),
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ]));
  }
}
