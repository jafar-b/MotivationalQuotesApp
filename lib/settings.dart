import 'package:flutter/material.dart';



class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool tapSound = true;
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Tap Sound'),
            trailing: Switch(
              value: tapSound,
              onChanged: (value) {
                setState(() {
                  tapSound = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Notification'),
            trailing: Switch(
              value: notification,
              onChanged: (value) {
                setState(() {
                  notification = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('FAQ'),
            onTap: () {
              Navigator.pushNamed(context, '/faq');
            },
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pushNamed(context, '/contactus');
            },
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            title: Text('Privacy Policy'),
            onTap: () {
              var snackBar = SnackBar(content: Text('The app is in development therefore no privacy policy.'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              
            },
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            title: Text('Share App'),
            onTap: () {
              var snackBar = SnackBar(content: Text('The app is in development.'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              //TODO: Implement share app feature
            },
            trailing: Icon(Icons.share),
          ),
          ListTile(
            title: Text('Rate App'),
            onTap: () {  var snackBar = SnackBar(content: Text('The app is in development.'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

              //TODO: Implement rate app feature
            },
            trailing: Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}
