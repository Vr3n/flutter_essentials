import 'package:flutter/material.dart';
import 'package:essentials/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos/");

  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Mr Robot Wiki'),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text("ID: ${data[index]['id']}"),
                  leading: Image.network(data[index]['url']),
                );
              }),
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      // DRAWER
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.send),
      ),
    );
  }
}
