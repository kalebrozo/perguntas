import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
var _perguntaSelecionada = 0;

void _responder() {

    setState(() {
      if(_perguntaSelecionada<1)
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
    print('Pergunta respondida');
  }

@override
  Widget build(BuildContext context) {
    
    final List<String> perguntas = [
          'Qual sua cor favorita?',
          'Qual seu animal favorito?'
          ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home Perguntas'),
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]),
              RaisedButton(
                child: Text('Azul'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Vermelho'),
                onPressed: _responder,
              ),
              RaisedButton(
                child: Text('Verde'),
                onPressed: _responder,
              ),
            ],
        )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {  
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }  
}
