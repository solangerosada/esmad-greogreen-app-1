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
          backgroundColor: Colors.blue,
          title: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(50, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(22.0)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search some adress",
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                    ))
                  ]))),
      // ignore: prefer_const_constructors
      body: Center(child: const Text('Help Us', style: _textStyle)),
    );
  }
}
