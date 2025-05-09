import 'package:estudos_flutter/services/gerador_de_numero_aleatorio.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(numero.toString())],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => {
              setState(() {
                numero = GeradorDeNumeroAleatorio().geraNumero();
              }),
            },
        child: const Icon(Icons.add),
      ),
    );
  }
}
