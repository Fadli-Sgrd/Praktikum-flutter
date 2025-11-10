import 'package:modul_7/UI/login_form.dart';
import 'package:modul_7/UI/produk_form.dart';
import 'package:modul_7/hello_world.dart';
import 'package:flutter/material.dart';
import 'package:modul_7/column_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplikasi Flutter Pertama",
      home: LoginForm(),
    );
  }
}
