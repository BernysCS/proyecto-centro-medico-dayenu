import 'package:centro_medico_dayenu/crear_cita/crear_cita.dart';
import 'package:centro_medico_dayenu/mensajes/mensajes.dart';
import 'package:centro_medico_dayenu/principal/principal.dart';
import 'package:flutter/material.dart';

class Navegacion extends StatefulWidget {
  const Navegacion({super.key});

  @override
  State<Navegacion> createState() => _NavegacionState();
}

class _NavegacionState extends State<Navegacion> {
  int _indiceActual = 0;

    final List<Widget> _pantallas = [
    const PantallaPrincipal(),
    const PantallaCrearCita(),
    const PantallaMensajes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pantallas[_indiceActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceActual,
        onTap: (int index) {
          setState(() {
            _indiceActual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Crear cita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mensajes',
          ),
        ],
      ),
    );
  }
}
