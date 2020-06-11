import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Azul', 'Verde']
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Leão', 'Ema']
    },
    {
      'texto': 'Qual instrutor favorito?',
      'respostas': ['Clara', 'Ana']
    }
  ];

  bool get existePerguntaSelecinada {
    return _perguntaSelecionada < _perguntas.length;
  }

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
    List<String> respostas = existePerguntaSelecinada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home Perguntas'),
          ),
          body: existePerguntaSelecinada
              ? Column(
                  children: <Widget>[
                    Questao(_perguntas[_perguntaSelecionada]['texto']),
                    ...respostas.map((e) => Resposta(e, _responder)).toList(),
                  ],
                )
              : null),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
