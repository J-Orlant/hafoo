import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/page/auth/login_page.dart';
import 'package:hafoo/page/auth/register_page.dart';
import 'package:hafoo/page/main_page.dart';
import 'package:hafoo/page/profile/edit_profile.dart';
import 'package:hafoo/page/splash_screen.dart';
import 'package:hafoo/page/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PageCubit>(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          ('/'): (context) => SplashScreeen(),
          ('/welcome'): (context) => WelcomePage(),
          ('/register'): (context) => RegisterPage(),
          ('/login'): (context) => LoginPage(),
          ('/main-page'): (context) => MainPage(),
          ('/edit-profile'): (context) => EditProfilePage(),
        },
      ),
    );
  }
}
