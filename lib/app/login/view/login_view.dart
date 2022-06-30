import 'package:bloc_app/app/login/view/gif_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app.dart';
import '../controller/login_controller.dart';
import '../service/login_service.dart';

part 'components/login_components.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/img/background.png'),
                  fit: BoxFit.cover)),
          child: buildBody),
    );
  }

  AppBar get buildAppBar => AppBar(
        title: Text('Gif App'),
        backgroundColor: AppConstants.kColorAppBar,
      );

  Widget get buildBody {
    return BlocProvider(
      create: buildBlocProvider,
      child: buildBlocConsumer,
    );
  }

  Widget get buildBlocConsumer {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return buildForm(context, state);
      },
    );
  }

  LoginCubit buildBlocProvider(context) => LoginCubit(
        service: LoginService(
          service: Dio(BaseOptions(baseUrl: AppConstants.BASE_URL)),
        ),
      );

  void buildBlocListener(context, state) {
    if (state is LoginCompleted) {
      final data = state.loginModel;
      if (data.error != null) {
        buildSnackBar(context, data.error!);
      } else {
        buildSnackBar(context, 'Login Success!');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GifView()),
        );
      }
    }
  }

  Widget buildForm(BuildContext context, LoginState state) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          buildTextField(emailController),
          buildTextField(passwordController),
          buildButton(context, state)
        ],
      ),
    );
  }
}
