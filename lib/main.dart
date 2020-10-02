import 'package:flutter/material.dart';
import 'package:aplikasi_satu/screens/login_screen.dart';
import 'package:aplikasi_satu/screens/register_screen.dart';
import 'package:aplikasi_satu/screens/profile_screen.dart';
import 'package:aplikasi_satu/screens/home_screen.dart';
import 'package:aplikasi_satu/screens/favorite_screen.dart';
import 'package:aplikasi_satu/screens/livenews_screen.dart';
import 'package:aplikasi_satu/screens/view_screen.dart';
import 'package:aplikasi_satu/screens/sidemenu_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/login_screen' : (BuildContext context) => new LoginScreen(),
        '/register_screen' : (BuildContext context) => new RegisterScreen(),
        '/profile_screen' : (BuildContext context) => new ProfileScreen(),
        '/home_screen' : (BuildContext context) => new HomeScreen(),
        '/favorite_screen' : (BuildContext context) => new FavoriteScreen(),
        '/livenews_screen' : (BuildContext context) => new LiveNewsScreen(),
        '/view_screen' : (BuildContext context) => new ViewScreen(),
        '/sidemenu_screen' : (BuildContext context) => new NavDrawer(),
      }
    );
  }
}
