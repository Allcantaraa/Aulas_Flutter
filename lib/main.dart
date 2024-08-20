import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context); //variável final valor não pode ser alterado
    final bgTela = tema.colorScheme.inversePrimary;

    final nomeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: bgTela,
      ),
      body: Padding(
        padding: const EdgeInsets.all(44.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: "Informe seu nome",
                border: OutlineInputBorder(), //Borda nas 4 direções
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Olá, ${nomeController.text}!"))
                );
              },
              child: const Text("Cumprimente"),
            )
          ],
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
      title: "Aula 2",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
