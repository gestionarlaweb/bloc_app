import 'package:bloc_app/app/login/service/gif_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GifView extends StatelessWidget {
  const GifView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GifServices(), lazy: false),
      ],
      child: ListGif(),
    );
  }
}

class ListGif extends StatelessWidget {
  const ListGif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('index'));
        },
      ),
    );
  }
}
