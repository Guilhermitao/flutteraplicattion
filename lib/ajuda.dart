import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteraplicativo/novomenu.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NovoMenu(),
      appBar: AppBar(title: Text("Ajuda")),
      body: Container(child: Text('Cliente')),
    );
  }
}