import 'package:bloc_app/app/login/service/gif_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/widget_gif.dart';

class GifView extends StatelessWidget {
  const GifView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GifServices(), lazy: false),
      ],
      child: WidgetGif(),
    );
  }
}
