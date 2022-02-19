import 'package:flutter/material.dart';

// This is where everything starts.
void main() {
  // Accepts an application
  // It accepts many types of apps.
  // --> Widget App
  // --> Cupertino App
  runApp(MaterialApp(
      home: HomePage(),
      title: 'Mr. Robot Wiki',
      theme: ThemeData(primarySwatch: Colors.orange)));
}

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

  void _setLatestValue(text) {
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
          child: Card(
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
                    _setLatestValue(text);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                    labelText: "Name",
                  ),
                ),
              )
            ]),
          ),
        ),
      )),
      // DRAWER
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Edward Alderson"),
              accountEmail: Text("edward_alderson@fsociety.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.wikia.nocookie.net/mrrobot/images/8/86/EdwardAlderson.jpg/revision/latest/top-crop/width/360/height/450?cb=20161117005643")),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Edward Alderson"),
              subtitle: Text('Father of elliot (Mr. Robot)'),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
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
