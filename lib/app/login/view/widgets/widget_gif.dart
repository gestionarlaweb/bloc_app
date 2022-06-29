import 'package:bloc_app/app/login/service/gif_services.dart';
import 'package:bloc_app/app/login/view/widgets/view/list_gif.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetGif extends StatelessWidget {
  const WidgetGif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gifProvider = Provider.of<GifServices>(context);

    return Scaffold(body: ListGif(gifs: gifProvider.onDisplayGif));
  }
}
