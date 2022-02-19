import 'package:flutter/material.dart';

// This is where everything starts.
void main() {
  // Accepts an application
  // It accepts many types of apps.
  // --> Widget App
  // --> Cupertino App
  runApp(MaterialApp(
      home: HomePage(), theme: ThemeData(primarySwatch: Colors.orange)));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mr Robot Wiki'),
        ),
        body: Container(
            height: 500,
            color: Colors.purple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Column(children: [
                    Container(
                      color: Colors.black,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.orange,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.pink,
                      width: 50,
                      height: 50,
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  color: Colors.black,
                  alignment: Alignment.center,
                ),
              ],
            )));
  }
}
