import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      // ignore: prefer_const_literals_to_create_immutables
      child: AboutListTile(aboutBoxChildren: [
        const Text('New recycling bin!'),
        Text('New recycling bin!'),
        Text('New recycling bin!'),
        const Text('New recycling bin!')
      ]),
    );
  }
}
