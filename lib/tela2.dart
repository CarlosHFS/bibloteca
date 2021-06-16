import 'package:biblioteca/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  Widget _buildBottomCard(double width, double height) {
    return Container(
      width: width,
      height: height / 1.1,
      decoration: BoxDecoration(
          color: Color.fromARGB(100, 150, 70, 0),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(27), topLeft: Radius.circular(27))),
    );
  }

  Widget _buildCenterCard(double width, double height) {
    return Padding(
      padding: EdgeInsets.only(top: 71),
      child: Container(
          width: width / 1.25,
          height: height / 1.3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(27),
                topLeft: Radius.circular(27),
                bottomRight: Radius.circular(27),
                bottomLeft: Radius.circular(27),
              )),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Textos("Perfil"),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 150, 70, 0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Textos("2"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: _buildBottomCard(width, height)),
          Align(
            alignment: Alignment.topCenter,
            child: _buildCenterCard(width, height),
          ),
        ],
      ),
    );
  }
}
