import 'package:bloc_app/app/login/model/gif_model.dart';
import 'package:bloc_app/core/constants/app.dart';
import 'package:flutter/material.dart';

class DetailsGif extends StatelessWidget {
  const DetailsGif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Datum gif = ModalRoute.of(context)!.settings.arguments as Datum;
    print(gif.title);
    return Scaffold(
        appBar: AppBar(
          title: Text('Detalle Gif'),
          backgroundColor: AppConstants.kColorAppBar,
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(gif.id),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(gif.title),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(gif.embedUrl),
              ),
              FadeInImage(
                  placeholder: AssetImage('assets/giphy.gif'),
                  image: NetworkImage(gif.images.original.url))
            ],
          ),
        ));
  }
}
