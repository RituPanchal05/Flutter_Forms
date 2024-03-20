import 'package:flutter/material.dart';
import 'package:forms/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Signup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: form(),
    );
  }
}
