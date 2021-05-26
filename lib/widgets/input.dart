import 'package:flutter/material.dart';

class InputTextos extends StatelessWidget {
  String rotulo;
  String label;
  TextEditingController controller;

  InputTextos(this.rotulo, this.label, {this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
          color: Color(0xffdddddd),
          fontSize: 25,
          fontWeight: FontWeight.w200
      ),
      decoration: InputDecoration(
          labelText: rotulo,
          hintText: label
      ),
    );
  }
}