import 'package:biblioteca/tela2.dart';
import 'package:biblioteca/tela3.dart';
import 'package:biblioteca/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:biblioteca/tela1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tela inicial",
      home: HomePage(),
      routes: {
        "/tela1": (context) => Empre(),
        "/tela2": (context) => Perfil(),
        "/tela3": (context) => Livro(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Container(
      width: width / 1.25,
      height: height / 3.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(27),
              topLeft: Radius.circular(27),
              bottomLeft: Radius.circular(27),
              bottomRight: Radius.circular(27))),
      child: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
                size: 55,
              ),
              onPressed: () async {
                await Navigator.pushNamed(context, "/tela1");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterCard2(double width, double height) {
    return Container(
      width: width / 1.25,
      height: height / 2.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(27),
              topLeft: Radius.circular(27),
              bottomLeft: Radius.circular(27),
              bottomRight: Radius.circular(27))),
      child: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
                size: 55,
              ),
              onPressed: () async {
                await Navigator.pushNamed(context, "/tela3");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterCard3() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(right: 60, top: 0),
        child: IconButton(
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 60,
          ),
          onPressed: () async {
            await Navigator.pushNamed(context, "/tela2");
          },
        ),
      ),
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
        title: Textos(""),
      ),
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: _buildBottomCard(width, height)),
          Align(
            alignment: Alignment(0, -0.8),
            child: _buildCenterCard(width, height),
          ),
          Align(
              alignment: Alignment(0, 0.7),
              child: _buildCenterCard2(width, height)),
          Align(alignment: Alignment(1.0, -1.15), child: _buildCenterCard3()),
        ],
      ),
    );
  }
}
