import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row & Column',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Row and Column"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('assets/panitan.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello",
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "PANITAN",
                      style: TextStyle(fontSize: 30, fontWeight:FontWeight.normal ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}