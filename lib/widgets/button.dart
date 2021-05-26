import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  final String texto;
  final Function onPressed;
  Botoes(this.texto, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.indigo,
        child: Text(
          texto,
          style: TextStyle(
              color: Color(0xffdddddd),
              fontSize: 27,
              fontWeight: FontWeight.w200
          ),
        ),
        onPressed: onPressed);
  }
}