// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:geogreen/help_us.dart';
import 'package:geogreen/informer.dart';
import 'package:geogreen/notification.dart';
import 'package:geogreen/profile.dart';

//import '../widget/maps_wiget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoGreen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: duplicate_ignore
  @override
  // ignore: dead_code, dead_code
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.blue,
          ),
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24),
                child: Image.network(
                    'https://img.freepik.com/vetores-premium/homem-joga-garrafa-de-plastico-na-lata-de-lixo-sinal-de-reciclagem-de-lixo-o-conceito-de-cuidar-do-meio-ambiente-e-separar-o-lixo-reciclar-ilustracao-vetorial-de-estilo-de-vida-ecologico-homem-com-cesto-de-reciclagem_419010-294.jpg?w=1060'),
              ),
              const Center(
                child: Text(
                  'Welcome back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Insert your data and let´s go',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstScreen()));
                    },
                    color: Colors.blue,
                    child: const Text(
                      'LETS GO!',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}

const TextStyle _textStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontStyle: FontStyle.italic);

//-------First PAGE -----------

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int index = 0;

  final pages = const [
    InformerPage(),
    HelpUsPage(),
    Center(child: Text('Location', style: _textStyle)),
    NotificationPage(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          selectedIndex: index,
          onDestinationSelected: (int index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.space_dashboard_outlined,
              ),
              icon: Icon(Icons.space_dashboard_outlined),
              label: 'Informer',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.groups_outlined),
              icon: Icon(Icons.groups_outlined),
              label: 'Help Us',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.location_on_rounded),
              icon: Icon(Icons.location_on_rounded),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.notifications_active_outlined),
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Notification',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_outline_outlined),
              icon: Icon(Icons.person_outline_outlined),
              label: 'Profile',
            ),
          ],
        ));
  }
}
