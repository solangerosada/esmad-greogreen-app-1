import 'package:flutter/material.dart';

//import 'info_page.dart';
import 'package:geogreen/info_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.teal),
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          title: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(151, 213, 179, 0.192),
                borderRadius: BorderRadius.all(Radius.circular(22.0)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
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
      body: Container(
        alignment: Alignment.center,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            image: DecorationImage(
          image: const NetworkImage(
              'https://www.mapav.com/images/m/mapa/vila-do-conde.png'),
          fit: BoxFit.cover,
        )),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InfoPage()));
          },
          backgroundColor: Colors.teal,
          child: //Text('?'),
              const Icon(Icons.question_mark)),
    );
  }
}
