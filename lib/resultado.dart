import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  
  final String resultado;
  Resultado(this.resultado);

  @override
  Widget build(BuildContext context) {
    return Container (
      width: double.infinity,
      child:
       Center(
                child: Text(
                  resultado,
                  style: TextStyle(fontSize: 26),
                  ),
                
              )
    );
  }
}