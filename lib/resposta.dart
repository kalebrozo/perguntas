import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String resposta;
  final void Function() quandoSelecionado;

  Resposta(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return  Container(
    width: double.infinity,
    child: RaisedButton(
      textColor: Colors.white,      
      color: Colors.blue,
      child: Text(resposta),
        onPressed: quandoSelecionado,
      )
    );
  }
}