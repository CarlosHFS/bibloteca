import 'package:flutter/material.dart';
class Textos extends StatelessWidget {
  String seuTexto;
  @override
  Widget build(BuildContext context) {
    return Text(
      seuTexto,
      style: TextStyle(
          color: Color(0xffdddddd),
          fontSize: 25,
          fontWeight: FontWeight.w200
      ),
    );
  }
  Textos(this.seuTexto);
}