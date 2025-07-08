import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: const HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: const Text("SENA | CEET"),
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.emoji_emotions_outlined),
            title: Text(aprendices[index]['nombre']),
            subtitle: Text(aprendices[index]['telefono']),
          );
        },
      ),
    );
  }
// }

List<Map<String, dynamic>> aprendices = [
  {'nombre': 'John Michael Vasquez Prada', 'telefono': '3123503334'},
  {'nombre': 'Jose David Zabaleta Calderon', 'telefono': '3235995105'},
  {'nombre': 'Maicol Stiven Espitia Arenas', 'telefono': '3123767034'},
  {'nombre': 'Cristian David Monzon Amortegui', 'telefono': '3107883038'},
  {'nombre': 'Valentina Pinzon Hernandez', 'telefono': '3115918301'},
  {'nombre': 'Kevin Leonardo Pacheco Rueda', 'telefono': '3156406251'},
  {'nombre': 'Kevin Santiago Montealegre Sanchez', 'telefono': '3209188193'},
  {'nombre': 'Maria Alejandra Villazon Montero', 'telefono': '3172897823'},
  {'nombre': 'Brayan Stiven Herrera Mateus', 'telefono': '3132860500'},
  {'nombre': 'Cristian Camilo Melo Cano', 'telefono': '3112850538'},
  {'nombre': 'Fabian Yesid Amaya Martinez', 'telefono': '573195638261'},
  {'nombre': 'Brayan David Castañeda Leiva', 'telefono': '3013237460'},
  {'nombre': 'Diego Alejandro Valbuena Mancera', 'telefono': '3016875644'},
  {'nombre': 'Oscar Mauricio Cruz Figueroa', 'telefono': '3227813912'},
  {'nombre': 'Julian Daniel Beltran Bustos', 'telefono': '3226607792'},
  {'nombre': 'David Leonardo Meneses Parra', 'telefono': '3138292531'},
  {'nombre': 'Alan Jair Cadena Quintero', 'telefono': '5714886956'},
  {'nombre': 'Miguel Angel Tunjano Correa', 'telefono': '3125918289'},
  {'nombre': 'David Santiago Moralez Pachon', 'telefono': '3116658577'},
  {'nombre': 'Johan Sneider Madrigal Tique', 'telefono': '3001597024'},
  {'nombre': 'Sharon Tatiana Fernandez Vallejo', 'telefono': '3227658431'},
  {'nombre': 'Johan Daniel Miranda Moreno', 'telefono': '3202564149'},
  {'nombre': 'Edward Camilo Lozano Panesso', 'telefono': '3041381520'},
  {'nombre': 'Samuel Cuida Esquivel', 'telefono': '3054302025'},
  {'nombre': 'Cristian Camilo Camacho Ferrucho', 'telefono': '3143808047'},
  {'nombre': 'David Santiago Daza Camacho', 'telefono': '3143688476'},
  {'nombre': 'David Santiago Valbuena Mancera', 'telefono': '3505112026'},
  {'nombre': 'Ronny Borda Ardila', 'telefono': '3219759220'},
  {'nombre': 'Miguel Angel Torres Torres', 'telefono': '3135562730'},
  {'nombre': 'Nicol Dayana Cordoba Maldonado', 'telefono': '573053677841'},
];
}