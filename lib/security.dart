import 'package:flutter/material.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(
            'Security',
            maxLines: 3,
          ),
        )),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              )
            ])));
  }
}
