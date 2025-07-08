import 'dart:js_util';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[900],
          title: Text("Información Personal"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage("https://ssl.gstatic.com/onebox/media/sports/logos/i6-Yda76iPfeYEg4JcNbuw_64x64.png")
              ),
              ListTile(
                title: Text("Ronny"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.star),
              ),
              Divider(),
              ListTile(
                title: Text("Espitia Ardila"),
                subtitle: Text("Apellidos"),
                leading: Icon(Icons.person),
              ),
              Divider(),
              ListTile(
                title: Text("3219759220"),
                subtitle: Text("Celular"),
                leading: Icon(Icons.phone_callback),
              ),
              Divider(),
              ListTile(
                title: Text("DISTRITO CAPITAL"),
                subtitle: Text("Regional"),
                leading: Icon(Icons.location_city),
              ),
              Divider(),
              ListTile(
                title: Text("CEET"),
                subtitle: Text("Centro de Formación"),
                leading: Icon(Icons.location_on),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}