import 'package:bloc_app/app/login/model/gif_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/app.dart';
import '../model/gif_model.dart';

class GifServices extends ChangeNotifier {
  final String _baseUrl = AppConstants.BASE_URL_GIF;
  final String _apiKey = AppConstants.API_GIF;

  // Lista del Modelo de datos
  List<Datum> onDisplayGif = [];

  GifServices() {
    print('inicializando');
    getOnDisplayGif();
  }

  getOnDisplayGif() async {
    var url = Uri.https(_baseUrl, 'v1/gifs/trending', {'api_key': _apiKey});
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final gifResponse = GifResponse.fromJson(response.body);
      onDisplayGif = gifResponse.data;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    //if (response.statusCode != 200) return print('error');
    //final Map<String, dynamic> decodedData = json.decode(response.body);

    notifyListeners();
  }
}
