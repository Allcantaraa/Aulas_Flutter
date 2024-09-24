import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final bgColor = tema.colorScheme.inversePrimary;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Atividade-Home"),
        backgroundColor: bgColor,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Atividade"),
              Text("Avaliativa"),
              Text("Kaua"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2H3"),
                  Text("2024"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Atividade",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
