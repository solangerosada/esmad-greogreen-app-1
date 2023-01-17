import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          'User Information',
          maxLines: 3,
        ),
      )),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Nome',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
