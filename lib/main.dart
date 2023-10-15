import 'package:ecommerce/pages/sign_up_page.dart';
import 'package:ecommerce/pages/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/':(context) => StartPage(),
        '/signuppage':(context) => SignUpPage(),
        // '/loginpage':(context) => LoginPage(),
      },
    );
  }
}

