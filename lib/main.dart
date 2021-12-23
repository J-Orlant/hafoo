import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/page/auth/login_page.dart';
import 'package:hafoo/page/auth/register_page.dart';
import 'package:hafoo/page/cart/succes_page.dart';
import 'package:hafoo/page/main_page.dart';
import 'package:hafoo/page/profile/edit_profile.dart';
import 'package:hafoo/page/profile/orderan_page.dart';
import 'package:hafoo/page/splash_screen.dart';
import 'package:hafoo/page/welcome_page.dart';
import 'package:hafoo/provider/auth_provider.dart';
import 'package:hafoo/provider/pembayaran.dart';
import 'package:hafoo/provider/product_provider.dart';
import 'package:provider/provider.dart';

void main() async {
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
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<Pembayaran>(
            create: (context) => Pembayaran(),
          ),
          ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider(),
          ),
          ChangeNotifierProvider<ProductProvider>(
            create: (context) => ProductProvider(),
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
            ('/orderan'): (context) => OrderanPage(),
            ('/success'): (context) => SuccessPage(),
          },
        ),
      ),
    );
  }
}
