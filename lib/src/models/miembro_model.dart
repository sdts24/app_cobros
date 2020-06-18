
import 'dart:convert';

MiembroModel miembroModelFromJson(String str) => MiembroModel.fromJson(json.decode(str));

String miembroModelToJson(MiembroModel data) => json.encode(data.toJson());

class MiembroModel {

    int id;
    String nombre;
    String telefono;
    String correo;
    DateTime fechaInscripcion;
    bool estado;
    String padres;
    //DateTime createdAt;
    //DateTime updatedAt;

    MiembroModel({
        this.id,
        this.nombre,
        this.telefono,
        this.correo,
        this.fechaInscripcion,
        this.estado,
        this.padres,
        //this.createdAt,
        //this.updatedAt,
    });

    factory MiembroModel.fromJson(Map<String, dynamic> json) => MiembroModel(
        id: json["id"],
        nombre: json["Nombre"],
        telefono: json["Telefono"],
        correo: json["Correo"],
        fechaInscripcion: DateTime.parse(json["Fecha_Inscripcion"]),
        estado: json["Estado"],
        padres: json["Padres"],
        //createdAt: DateTime.parse(json["created_at"]),
        //updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        //"id": id,
        "Nombre": nombre,
        "Telefono": telefono,
        "Correo": correo,
        "Fecha_Inscripcion": "${fechaInscripcion.year.toString().padLeft(4, '0')}-${fechaInscripcion.month.toString().padLeft(2, '0')}-${fechaInscripcion.day.toString().padLeft(2, '0')}",
        "Estado": estado,
        "Padres": padres,
        //"created_at": createdAt.toIso8601String(),
        //"updated_at": updatedAt.toIso8601String(),
    };
}
