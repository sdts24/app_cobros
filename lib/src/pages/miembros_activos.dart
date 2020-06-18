import 'package:app_cobros/src/providers/miembros_provider.dart';
import 'package:flutter/material.dart';

class MiembrosActivos extends StatelessWidget {

  final miembroProvider = new MiembroProvider();
  

  @override
  Widget build(BuildContext context) {
    miembroProvider.cargarMiembros();
    return Scaffold(
      appBar: AppBar(
        title: Text("Miembros Activos"),
      ),
      body: _crearCards(),
    );
  }

  Widget _crearCards() {
    return Container(
      child: Card(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Hola"),
            ],
          ),
        ),
      ),
    );
  }
}
