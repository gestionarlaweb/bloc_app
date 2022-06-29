import 'package:bloc_app/app/login/view/login_view.dart';
import 'package:flutter/material.dart';

import 'app/login/view/gif_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: LoginView(),
      home: GifView(),
    );
  }
}
