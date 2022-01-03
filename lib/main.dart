import 'package:flutter/material.dart';

import 'operations.dart';
import 'input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget myWidget = Text('');
  TextEditingController tec1 = new TextEditingController();
  TextEditingController tec2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Menu Pop Up - Class Widgets'),
          actions: [
            menuPopUp(),
          ],
        ),

        body: Center(
          child: myWidget,
        ),

      ),

    );
  }

  Widget menuPopUp(){
    return PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(child: Text('Datos'), value: '0',),
          PopupMenuItem(child: Text('Suma'), value: '1',),
          PopupMenuItem(child: Text('Resta'), value: '2',),
          PopupMenuItem(child: Text('Producto'), value: '3',),
          PopupMenuItem(child: Text('Division'), value: '4',)
        ],
      onSelected: (value){
          setState(() {
            switch(value){
              case '0':
                myWidget = Datos(tec1, tec2);
                break;
              case '1':
                myWidget = Suma(double.parse(tec1.text), double.parse(tec2.text));
                break;
              case '2':
                myWidget = Resta(double.parse(tec1.text), double.parse(tec2.text));
                break;
              case '3':
                myWidget = Mult(double.parse(tec1.text), double.parse(tec2.text));
                break;
              case '4':
                myWidget = Division(double.parse(tec1.text), double.parse(tec2.text));
                break;
            }
          });
      },
    );
  }
/*
  Widget datos(){
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
  }*/
}
