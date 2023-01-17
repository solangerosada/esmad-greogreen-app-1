import 'package:flutter/material.dart';
import 'package:geogreen/edit_notification.dart';
import 'package:geogreen/main.dart';
import 'package:geogreen/security.dart';
import 'package:geogreen/user_info.dart';
import 'package:geogreen/widgets/profile_menu.dart';

const user = "User Info";
const security = "Security";
const notification = "Notifications";
const logout = "Log Out";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 110,
            backgroundColor: Colors.teal,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80'),
          ),
          Text(
            "Thamara Rey",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "thamararey@gmail.com",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.teal[200],
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: Divider(),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text('User Info'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UserInfo()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              title: Text('Security'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Security()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
              title: Text('Notificatons'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditNotification()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text('Log Out'),
              onTap: () {},
            ),
          )
        ],
      )),
    );
  }
}
