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
          child: Text('Elliot Alderson!'),
        ));
  }
}
