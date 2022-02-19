import 'package:flutter/material.dart';
import 'package:essentials/drawer.dart';
import 'package:essentials/nameCardWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var my_text = "Change my name";
  TextEditingController _nameController = TextEditingController();

  // Listening to changes.
  // @override
  // void initState() {
  //   super.initState();
  //   _nameController.addListener(_setLatestValue);
  // }

  // @override
  // void dispose() {
  //   _nameController.dispose();
  //   super.dispose();
  // }

  void _setLatestValue() {
    my_text = _nameController.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Mr Robot Wiki'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: NameCardWidget(
            my_text: my_text,
            nameController: _nameController,
            setLatestValue: _setLatestValue,
          ),
        ),
      )),
      // DRAWER
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          my_text = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
