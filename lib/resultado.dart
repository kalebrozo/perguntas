import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultado;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.resultado, this.quandoReiniciarQuestionario);

  get fraseResultado {
    if (resultado > 5) {
      return 'Parabéns!';
    } else {
      return 'Vamos melhorar!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 26),
            ),
          ),
          FlatButton(
            child: Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 16),
            ),
            textColor: Colors.blue,
            onPressed: quandoReiniciarQuestionario,
          )
        ]);
  }
}
