import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontStyle: FontStyle.italic);

class HelpUsPage extends StatelessWidget {
  //const Informer({super.key});

  const HelpUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          title: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(151, 213, 179, 0.192),
                borderRadius: BorderRadius.all(Radius.circular(22.0)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "     Search some adress",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.teal,
                        ),
                      )),
                    )
                  ]))),
      // ignore: prefer_const_constructors
      body: Center(child: const Text('Help Us', style: _textStyle)),
    );
  }
}
