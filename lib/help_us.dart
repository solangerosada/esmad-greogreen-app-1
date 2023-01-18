import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HelpUsPage extends StatelessWidget {
  //const Informer({super.key});

  const HelpUsPage({super.key});

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
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(41.15, -8.61024),
          zoom: 14,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HelpUsPage()));
          },
          backgroundColor: Colors.teal,
          child: //Text('?'),
              const Icon(Icons.add)),
    );
  }
}

//'https://www.google.com/maps/d/thumbnail?mid=1D6ltvAb-ulfV2cxhInzbogQwjl0&hl=en_US'
//https://www.mapav.com/images/m/mapa/vila-do-conde.png'