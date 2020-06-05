import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

class Chamada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(' '),
                Image.asset('images/fiap.png',
                    scale: 20.0, color: Colors.white),
              ],
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.blueAccent, Colors.cyanAccent]),
              ),
            ),
          )),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
                child: ListTile(
                  title: Center(
                      child: Text(
                        'Turmas',
                        style: TextStyle(fontSize: 25.0),
                      )),
                )),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropDownField(

            ),
          ),
        ],
      ),
    );
  }
}


