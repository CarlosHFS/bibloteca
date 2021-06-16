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
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      decoration: InputDecoration(labelText: rotulo, hintText: label),
    );
  }
}
