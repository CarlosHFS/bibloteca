import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Tela1"),
      ),
      body: _metodoBody(),
      backgroundColor: Colors.black12,
    );
  }

  _metodoBody() {
    return Container(

    );
  }
}
