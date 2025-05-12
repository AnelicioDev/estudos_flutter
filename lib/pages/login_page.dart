import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 244, 255),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                color: Colors.amber, 
                width: 150, 
                height: 150,
                child: const Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Color.fromARGB(139, 255, 83, 4),
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                alignment: Alignment.center,
                child: Text("Informe o email",),
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Color.fromARGB(139, 255, 83, 4),
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                alignment: Alignment.center,
                child: Text("Informe a senha",),
              ),
              Expanded(child: Container()),
               Container(
                height: 30,
                width: double.infinity,
                color: Colors.deepOrangeAccent,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                alignment: Alignment.center,
                child: Text("Botão",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
