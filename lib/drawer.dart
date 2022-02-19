import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
