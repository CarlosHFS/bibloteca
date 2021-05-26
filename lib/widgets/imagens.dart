import 'package:flutter/material.dart';
class SuaImagem extends StatefulWidget {
  final String caminhoArquivo;
  const SuaImagem({Key key, this.caminhoArquivo}) : super(key: key);
  @override
  _SuaImagemState createState() => _SuaImagemState();
}

class _SuaImagemState extends State<SuaImagem> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.caminhoArquivo,
      filterQuality: FilterQuality.high,
      fit: BoxFit.cover,
      scale: 50,
    );
  }
}
