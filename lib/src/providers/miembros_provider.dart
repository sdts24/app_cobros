import 'dart:convert';
//import 'dart:io';

import 'package:app_cobros/src/models/miembro_model.dart';
import 'package:http/http.dart' as http;


class MiembroProvider {


    Future<List<MiembroModel>> cargarMiembros() async {

     final String _url = 'http://10.0.0.3:1337/miembros';


      final resp = await http.get(Uri.encodeFull(_url));

      final responseBody = json.decode(resp.body);

      print(responseBody);
      // final Map<String, dynamic> decodeData = json.decode(resp.body);
      // final List<MiembroModel> miembros = List();

      // if (decodeData == null) return [];

      // decodeData.forEach((id, miembro) {
        
      //   final miembroTemporal = MiembroModel.fromJson(miembro);
        
      //   miembroTemporal.id = int.parse(id);

      //   miembros.add(miembroTemporal);
      // });

      // print("Hola todos");
      
      return [];
    }
}