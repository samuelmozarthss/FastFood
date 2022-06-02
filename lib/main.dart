import 'package:fast_food/components/palette.dart';
import 'package:fast_food/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'components/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FastFood',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: LoginScreen(),
    );
  }
}
