import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Tarefas",
      routes: {
        "/": (_) => const HomePage(),
      },
      initialRoute: "/",
    );
  }
}