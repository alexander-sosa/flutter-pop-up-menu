import 'package:flutter/material.dart';

class Datos extends StatelessWidget{
  TextEditingController tec1 = new TextEditingController();
  TextEditingController tec2 = new TextEditingController();
  Datos(this.tec1, this.tec2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.cyanAccent[100],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(controller: tec1, decoration: InputDecoration(hintText: 'Primer numero: '), keyboardType: TextInputType.number,),
            TextField(controller: tec2, decoration: InputDecoration(hintText: 'Segundo numero: '), keyboardType: TextInputType.number,),
          ],
        ),
      ),

    );
  }

}