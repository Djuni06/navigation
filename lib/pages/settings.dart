import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      // theme: ThemeData(
      //   primarySwatch: Colors.teal,
      // ),
      home: Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Account'),
      ),
      ListTile(
        leading: Icon(Icons.notifications),
        title: Text('Notification'),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text('Privacy'),
      ),
      ListTile(
        leading: Icon(Icons.security),
        title: Text('Security'),
      ),
      ListTile(
        leading: Icon(Icons.help),
        title: Text('Help'),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text('About'),
      ),
      ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.red,
          ),
          title: Text(
            'Logout',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          )),
    ],
  );
}
