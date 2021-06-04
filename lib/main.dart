import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Persona> _personas = [
    Persona('Derek', 'lopez', '6561598537'),
    Persona('Pepe', 'diaz', '6563578125'),
    Persona('Toni', 'Gutierrez', '6566542389'),
    Persona('diego', 'meme', '6562463568'),
    Persona('Pedro', 'gordua', '6561284502'),
    Persona('joel', 'magaña', '6565477458'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'contacts',
      home: Scaffold(
        appBar: AppBar(
          title: Text('contacts'),
        ),
        body: ListView.builder(
            itemCount: _personas.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_personas[index].name + '' + _personas[index].lastname),
                subtitle: Text(_personas[index].phone),
                leading: CircleAvatar(
                  child: Text(_personas[index].name.substring(0, 1)),
                ),
              );
            }),
      ),
    );
  }
}

class Persona {
  String name;
  String lastname;
  String phone;

  Persona(name, lastname, phone) {
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}
