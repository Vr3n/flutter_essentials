import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget(
      {Key? key,
      required this.my_text,
      required TextEditingController nameController,
      required Function setLatestValue})
      : _nameController = nameController,
        _setLatestValue = setLatestValue,
        super(key: key);

  final String my_text;
  final TextEditingController _nameController;
  final Function _setLatestValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset(
          "assets/bg.jpg",
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          my_text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            onChanged: (text) {
              _setLatestValue();
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your name",
              labelText: "Name",
            ),
          ),
        )
      ]),
    );
  }
}
