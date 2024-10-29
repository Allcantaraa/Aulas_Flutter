import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:tarefas/entidade/tarefa.dart';

class TarefaVm extends ChangeNotifier {
  final List<Tarefa> _tarefas = [];

  void addTarefa(String titulo) {
    _tarefas.add(Tarefa.titulo(titulo));
    notifyListeners();
  }

  List<Tarefa> get tarefas => _tarefas;

  static ChangeNotifierProvider<TarefaVm> create() =>
      ChangeNotifierProvider(
        create: (_) => TarefaVm(),
      );
}
