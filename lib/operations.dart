import 'package:flutter/material.dart';

class Suma extends StatefulWidget{
  double n1, n2;
  Suma(this.n1, this.n2);

  @override
  _SumaState createState() => _SumaState(n1, n2);
}

class _SumaState extends State<Suma> {
  double n1, n2;
  _SumaState(this.n1, this.n2);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$n1 + $n2', style: TextStyle(fontSize: 25),),
        Text('=', style: TextStyle(fontSize: 25),),
        Text('${n1+n2}', style: TextStyle(fontSize: 25),)
      ],
    );
  }
}

class Resta extends StatefulWidget{
  double n1, n2;
  Resta(this.n1, this.n2);

  @override
  _RestaState createState() => _RestaState(n1, n2);
}

class _RestaState extends State<Resta> {
  double n1, n2;
  _RestaState(this.n1, this.n2);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$n1 - $n2', style: TextStyle(fontSize: 25),),
        Text('=', style: TextStyle(fontSize: 25),),
        Text('${n1-n2}', style: TextStyle(fontSize: 25),)
      ],
    );
  }
}

class Mult extends StatefulWidget{
  double n1, n2;
  Mult(this.n1, this.n2);

  @override
  _MultState createState() => _MultState(n1, n2);
}

class _MultState extends State<Mult> {
  double n1, n2;
  _MultState(this.n1, this.n2);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$n1 * $n2', style: TextStyle(fontSize: 25),),
        Text('=', style: TextStyle(fontSize: 25),),
        Text('${n1*n2}', style: TextStyle(fontSize: 25),)
      ],
    );
  }
}

class Division extends StatefulWidget{
  double n1, n2;
  Division(this.n1, this.n2);

  @override
  _DivisionState createState() => _DivisionState(n1, n2);
}

class _DivisionState extends State<Division> {
  double n1, n2;
  _DivisionState(this.n1, this.n2);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$n1 / $n2', style: TextStyle(fontSize: 25),),
        Text('=', style: TextStyle(fontSize: 25),),
        Text('${n1/n2}', style: TextStyle(fontSize: 25),)
      ],
    );
  }
}