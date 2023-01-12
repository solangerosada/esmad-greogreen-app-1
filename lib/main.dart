import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class Informer extends StatefulWidget {
  const Informer({super.key});

  @override
  State<Informer> createState() => _InformerState();
}

class _InformerState extends State<Informer> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.groups_outlined),
            label: 'Help Us',
          ),
          NavigationDestination(
            icon: Icon(Icons.space_dashboard_outlined),
            label: 'Informer',
          ),
          NavigationDestination(
            icon: Icon(Icons.location_on_rounded),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
