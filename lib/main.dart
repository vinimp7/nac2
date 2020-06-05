import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nac2/screens/chamada.dart';
import 'package:nac2/screens/dashboard.dart';
import 'package:nac2/screens/trabalhos.dart';
import 'package:nac2/screens/trabalhos_form.dart';

void main() => runApp(PortalProfessor());

class PortalProfessor extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Dashboard(),//Scaffold
    ); //MaterialApp
  }
}



