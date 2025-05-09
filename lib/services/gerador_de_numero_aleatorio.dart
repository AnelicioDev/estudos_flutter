import 'dart:math';

class GeradorDeNumeroAleatorio {
  int geraNumero() {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(10);
  }
}
