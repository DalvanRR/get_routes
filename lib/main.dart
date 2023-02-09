import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/navega%C3%A7%C3%A3o_comum/navegacao_comum_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavegacaoComumHomePage(),
    );
  }
}
