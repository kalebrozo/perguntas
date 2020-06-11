import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  bool get existePerguntaSelecinada {
    return _perguntaSelecionada < _perguntas.length;
  }

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto':'Azul','nota':10},
        {'texto':'Verde','nota':1},
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto':'Leão','nota':10},
        {'texto':'Ema','nota':1},
      ]
    },
    {
      'texto': 'Qual instrutor favorito?',
      'respostas': [
        {'texto':'Clara','nota':10},
        {'texto':'Ana','nota':1},
      ]
    }
  ];

  void _responder() {
    if (existePerguntaSelecinada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    print(_perguntaSelecionada);
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home Perguntas'),
          ),
          body: existePerguntaSelecinada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder)
              : Resultado('Parabéns!')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
