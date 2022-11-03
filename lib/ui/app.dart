import 'package:flutter/material.dart';
import 'package:vista_perfil/ui/fechas/fechas.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fechas',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const Fechas(),
    );
  }
}
