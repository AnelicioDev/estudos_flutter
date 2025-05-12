import 'package:estudos_flutter/services/gerador_de_numero_aleatorio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text(
          widget.title,
          style: GoogleFonts.pacifico(
            color: Colors.white,
            fontSize: 24,
          ),
          
          ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                child: Expanded(child: Text("Azul", )),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Text("Red"),
                )
              )
            ],
          ),
          Center(
            child:Text("Numero sorteado", style: TextStyle(color: Color.fromARGB(255, 255, 9, 91))),
          ),
          Center(
            child: Text(
              "$numero",
              style: TextStyle(fontSize: 30),
              ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            numero = GeradorDeNumeroAleatorio().geraNumero();
          })
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
