// To parse this JSON data, do
//
//     final gifResponse = gifResponseFromMap(jsonString);

import 'dart:convert';

import 'package:bloc_app/app/login/model/gif_model.dart';

class GifResponse {
  GifResponse({
    required this.data,
  });

  List<Datum> data;

  factory GifResponse.fromJson(String str) =>
      GifResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GifResponse.fromMap(Map<String, dynamic> json) => GifResponse(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}
