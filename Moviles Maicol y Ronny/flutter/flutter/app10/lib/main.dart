import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

final txtNombre = TextEditingController();
final txtDescripcion = TextEditingController();
final txtFechaLanz = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFotografia = TextEditingController();
final txtColor = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
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
        title: Text("FICHA | 2925960"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(aprendices[index]["ubicacion"]),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(aprendices[index]["nombre"]),
                      backgroundColor: aprendices[index]["color_distintivo"],
                      foregroundColor: Colors.white,
                    ),
                    body: ListView(
                      padding: const EdgeInsets.all(20),
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                              aprendices[index]["foto"],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                          leading: const Icon(Icons.phone),
                          title: Text("Teléfono"),
                          subtitle: Text(aprendices[index]["telefono"]),
                        ),
                        ListTile(
                          leading: const Icon(Icons.location_on),
                          title: Text("Ubicación"),
                          subtitle: Text(aprendices[index]["ubicacion"]),
                        ),
                        ListTile(
                          leading: const Icon(Icons.calendar_today),
                          title: Text("Fecha de inscripción"),
                          subtitle: Text(
                            aprendices[index]["fecha_inscripcion"],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  title: Text("Añadir Aprendiz"),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtNombre,
                        decoration: InputDecoration(
                          labelText: "Nombres",
                          hintText: "Nombres del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtDescripcion,
                        decoration: InputDecoration(
                          labelText: "Apellidos",
                          hintText: "Apellido del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtFechaLanz,
                        decoration: InputDecoration(
                          labelText: "Inscripcion",
                          hintText: "Fecha de inscripcion",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtFotografia,
                        decoration: InputDecoration(
                          labelText: "Ubicación",
                          hintText: "Ubicación del sitio turístico",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                      TextFormField(
                        controller: txtColor,
                        decoration: InputDecoration(
                          labelText: "Telefono",
                          hintText: "Telefono del aprendiz",
                          icon: Icon(Icons.file_copy),
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  onPressed: () {
                    if (txtNombre.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ERROR! Los espacios estan vacíos"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            "Se ha guardado satisfactoriamente el aprendiz: ${txtNombre.text}",
                          ),
                        ),
                      );
                    }
                  },
                  child: Icon(Icons.save),
                ),
              );
            },
          );
        },
        child: Icon(Icons.account_circle),
      ),
    );
  }
}


List<Map<String, dynamic>> aprendices = [
  {
    "nombre": "Ronny Borda Ardila",
    "telefono": "3219759220",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.green,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj7kHgyd9GHcPpVcJ8FMmOjOQVk6JyHMq3Rw&s", // FC Barcelona
  },
  {
    "nombre": "John Michael Vasquez Prada",
    "telefono": "3123503334",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pink,
    "foto": "https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png", // Arsenal
  },
  {
    "nombre": "Jose David Zabaleta Calderon",
    "telefono": "3235995105",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.green,
    "foto": "https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Real_Madrid_CF.svg/1200px-Real_Madrid_CF.svg.png", // Real Madrid
  },
  {
    "nombre": "Maria Alejandra Villazon Montero",
    "telefono": "3172897823",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.teal,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0UDr_CnJRgGobKbzTK82ApJEw6txny6lD7A&s", // Manchester United
  },
  {
    "nombre": "Tunajano Correa Miguel Angel",
    "telefono": "3125918289",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueGrey,
    "foto": "https://upload.wikimedia.org/wikipedia/commons/5/51/Juventus_FC_2017_logo.png", // Juventus
  },
  {
    "nombre": "Torres Torres Miguel Angel",
    "telefono": "3135562730",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.deepPurple,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-9jVbOc4-doXU6E5SduJlFANow7O3h4AXHg&s", // Chelsea
  },
  {
    "nombre": "Moralez Pachon David Santiago",
    "telefono": "3116658577",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.pinkAccent,
    "foto": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Logo_of_AC_Milan.svg/1200px-Logo_of_AC_Milan.svg.png", // AC Milan
  },
  {
    "nombre": "Miranda Moreno Johan Daniel",
    "telefono": "3202564149",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.cyanAccent,
    "foto": "https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png", // Manchester City
  },
  {
    "nombre": "Meneses Parra David Leonardo",
    "telefono": "3138292531",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.blueAccent,
    "foto": "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1200px-Borussia_Dortmund_logo.svg.png", // Borussia Dortmund
  },
  {
    "nombre": "Madrigal Tique Johan Sneider",
    "telefono": "3001597024",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.redAccent,
    "foto": "https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Liverpool_FC.svg/1200px-Liverpool_FC.svg.png", // Liverpool
  },
  {
    "nombre": "Lozano Panesso Edward Camilo",
    "telefono": "3041381520",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.purpleAccent,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRtv8PZCqjZCI7MhQ5lksq7S45ZtxgFguBEA&s", // AS Roma
  },
  {
    "nombre": "Londoño Carvajal Juan Esteban",
    "telefono": "3505112026",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.greenAccent,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrZHsoxwWeIeDjrq-yTKPRkiAzngkndP27_A&s", // Porto
  },
  {
    "nombre": "Fernandez Vallejo Sharon Tatiana",
    "telefono": "3227658431",
    "ubicacion": "Colombia",
    "fecha_inscripcion": "2023-03-01",
    "color_distintivo": Colors.amber,
    "foto": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOrPxxUpALT_m9t_zCbe487RdyUxYnkP5W4g&s", // Boca
  },
];