import 'package:bloc_app/app/login/view/login_view.dart';
import 'package:bloc_app/app/login/view/widgets/view/details_gif.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      routes: {
        'detail': (_) => DetailsGif(),
      },
      home: LoginView(),
    );
  }
}
