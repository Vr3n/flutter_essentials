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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Mr Robot Wiki'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16),
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
                "Gaming",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
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
              onTap: () {
                print("Hello");
              },
              leading: Icon(Icons.person),
              title: Text("Edward Alderson"),
              subtitle: Text('Father of elliot (Mr. Robot)'),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
    );
  }
}
