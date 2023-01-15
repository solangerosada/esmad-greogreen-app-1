// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  @override
  // ignore: dead_code, dead_code
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.blue,
          ),
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(24),
                child: Image.network(
                    'https://img.freepik.com/vetores-premium/homem-joga-garrafa-de-plastico-na-lata-de-lixo-sinal-de-reciclagem-de-lixo-o-conceito-de-cuidar-do-meio-ambiente-e-separar-o-lixo-reciclar-ilustracao-vetorial-de-estilo-de-vida-ecologico-homem-com-cesto-de-reciclagem_419010-294.jpg?w=1060'),
              ),
              Center(
                child: Text(
                  'Welcome back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Insert your data and let´s go',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
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
              Padding(
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Informer()));
                    },
                    child: Text(
                      'LETS GO!',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
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

//-------Informer PAGE -----------

class Informer extends StatelessWidget {
  //const Informer ({super.key});

  int _currentIndex = 0;

  List<Widget> pages = const [
    Text('Informer', style: _textStyle),
    Text('Help Us', style: _textStyle),
    Text('Location', style: _textStyle),
    Text('Notification', style: _textStyle),
    Text('Profile', style: _textStyle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(
            'What do you want to throw away?',
            maxLines: 3,
          ),
        )),
        body: Container(
          child: Padding(
              padding: EdgeInsets.all(24),
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/cb0557fb-0859-4837-8cf5-16d897ec6886?auto=compress%2Cformat&fit=max&w=1170&s=194161298dd9e2ca4fe808c9b833a15f',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/a609cc45-1267-4625-a560-654d92f56ba8?auto=compress%2Cformat&fit=max&w=1170&s=cf9ffab6325f42d6f492b3585f2058f2',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/afafb5b1-e205-49d1-b21b-a1c6614ed4a6?auto=compress%2Cformat&fit=max&w=1170&s=fb5e2d62ca0c981b57efc80d7515d347',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/4ec2102f-3f0a-439e-9406-bc688d954223?auto=compress%2Cformat&fit=max&w=1170&s=a367f2e5b20ff42cddadc3fd552be011',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/d91a186e-cdf4-401b-8550-bce87434ce43?auto=compress%2Cformat&fit=max&w=1170&s=99ba9b4a1dfdc1e6dd494e79c10cf53e',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/e758aeca-038c-4460-b6a2-ea1507de5cc5?auto=compress%2Cformat&fit=max&w=1170&s=c900d559dac10876cc0a57824f5fae4b',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/10025acd-22d2-4944-b1ef-b85b4219f97b?auto=compress%2Cformat&fit=max&w=1170&s=1137a65e22f47d7d514dd7631783b4e7',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://elements-cover-images-0.imgix.net/938ec75a-c299-4ca6-b98a-5fb36c2181f7?auto=compress%2Cformat&fit=max&w=1170&s=d04a761d0d497f60bd8f6ad606d2d89c',
                          scale: 0.5,
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
        bottomNavigationBar: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.space_dashboard_outlined),
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
              label: 'Notifications',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_outline_outlined),
              icon: Icon(Icons.person_outline_outlined),
              label: 'Profile',
            ),
          ],
        ));
  }

  // ignore: dead_code, unused_label

  void setState(Null Function() param0) {}
}

class HelpUs extends StatelessWidget {
  // const HelpUs({super.key});

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
      animationDuration: const Duration(seconds: 1),
      selectedIndex: _currentIndex,
      onDestinationSelected: (int newIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      },
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.space_dashboard_outlined),
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
          label: 'Notifications',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person_outline_outlined),
          icon: Icon(Icons.person_outline_outlined),
          label: 'Profile',
        ),
      ],
    ));
  }

  void setState(Null Function() param0) {}
}
