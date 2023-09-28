import 'package:flutter/material.dart';
import './fila_nueva_rutina.dart';

class ListaRutina extends StatefulWidget {
  const ListaRutina({
    super.key,
    this.tabController
  });

  final dynamic tabController;

  @override
  ListaRutinaState createState() => ListaRutinaState();
}

class ListaRutinaState extends State<ListaRutina> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/dark-cells.jpg'),
              fit: BoxFit.cover
          )
        ),
        child: ListView(
          children: [
            FilaNuevaRutina(tiempoTotal: '40min40sec', intervalos: '7ser/5desc', tabController: widget.tabController),
            FilaNuevaRutina(tiempoTotal: '40min40sec', intervalos: '70ser/50desc', tabController: widget.tabController),
          ],
        )
      ),
    );
  }
}