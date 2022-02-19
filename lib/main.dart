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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.blue]),
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
          ),
          child: Text(
            'Elliot Alderson',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
