import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());  
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SENA | CEET",
      debugShowCheckedModeBanner: false,
      home: HomePrincipal(),
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
        title: Text("FICHA | 2925960"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(          
          itemCount: aprendices.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(aprendices[index]),
              ),
            );
          },
        ),
      ),      
    );
  }
}

List<String> aprendices = [
  "John Michael Vasquez Prada",
  "Jose David Zabaleta Calderon",
  "Maicol Stiven Espitia Arenas",
  "Cristian David Monzon Amortegui",
  "Valentina Pinzon Hernandez",
  "Kevin Leonardo Pacheco Rueda",
  "Kevin Santiago Montealegre Sanchez",
  "Maria Alejandra Villazon Montero",
  "Brayan Stiven Herrera Mateus",
  "Cristian Camilo Melo Cano",
  "Fabian Yesid Amaya Martinez",
  "Brayan David Castañeda Leiva",
  "Diego Alejandro Valbuena Mancera",
  "Oscar Mauricio Cruz Figueroa",
  "Julian Daniel Beltran Bustos",
  "David Leonardo Meneses Parra",
  "Alan Jair Cadena Quintero",
  "Miguel Angel Tunjano Correa",
  "David Santiago Moralez Pachon",
  "Johan Sneider Madrigal Tique",
  "Sharon Tatiana Fernandez Vallejo",
  "Johan Daniel Miranda Moreno",
  "Edward Camilo Lozano Panesso",
  "Samuel Cuida Esquivel",
  "Cristian Camilo Camacho Ferrucho",
  "David Santiago Daza Camacho",
  "David Santiago Valbuena Mancera",
  "Ronny Borda Ardila",
  "Miguel Angel Torres Torres",
  "Nicol Dayana Cordoba Maldonado",
];