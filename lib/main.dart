import 'package:flutter/material.dart';

class Agencia {
  final int idAgencia;
  final String nombre;
  final String direccion;
  final String telefono;

  Agencia({
    required this.idAgencia,
    required this.nombre,
    required this.direccion,
    required this.telefono,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Agencias'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black54, fontSize: 25),
          backgroundColor: Color(0xffe490f2),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAgenciaContainer(
                  id: 1,
                  nombre: 'Agencia 1',
                  direccion: 'Calle 123, Ciudad A',
                  telefono: '123-456-7890',
                  color: Colors.blue[100]!,
                ),
                SizedBox(height: 10),
                _buildAgenciaContainer(
                  id: 2,
                  nombre: 'Agencia 2',
                  direccion: 'Avenida 456, Ciudad B',
                  telefono: '234-567-8901',
                  color: Colors.green[100]!,
                ),
                SizedBox(height: 10),
                _buildAgenciaContainer(
                  id: 3,
                  nombre: 'Agencia 3',
                  direccion: 'Calle 789, Ciudad C',
                  telefono: '345-678-9012',
                  color: Colors.orange[100]!,
                ),
                SizedBox(height: 10),
                _buildAgenciaContainer(
                  id: 4,
                  nombre: 'Agencia 4',
                  direccion: 'Avenida 012, Ciudad D',
                  telefono: '456-789-0123',
                  color: Colors.purple[100]!,
                ),
                SizedBox(height: 10),
                _buildAgenciaContainer(
                  id: 5,
                  nombre: 'Agencia 5',
                  direccion: 'Calle 345, Ciudad E',
                  telefono: '567-890-1234',
                  color: Colors.red[100]!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAgenciaContainer({
    required int id,
    required String nombre,
    required String direccion,
    required String telefono,
    required Color color,
  }) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        title: Text(nombre),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: $id'),
            Text('Dirección: $direccion'),
            Text('Teléfono: $telefono'),
          ],
        ),
      ),
    );
  }
}
