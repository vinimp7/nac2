import 'package:flutter/material.dart';
import 'package:nac2/screens/chamada_form.dart';

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
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
                child: ListTile(
                  title: Center(
                      child: Text(
                        'Selecione uma Turma',
                        style: TextStyle(fontSize: 25.0),
                      )),
                )),
          ),
          GestureDetector(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChamadaForm(),),).then((newTrabalhos) => debugPrint(newTrabalhos.toString()),);},
            child: Card(
               child: ListTile(
                  title: Text(
                    '3SIT',
                    style: TextStyle(fontSize: 25),
                  ),
                  subtitle: Text(
                    'Sistemas da Informação',
                    style: TextStyle(fontSize: 15),
                  )),

            ),
          ),
          GestureDetector(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChamadaForm(),),).then((newTrabalhos) => debugPrint(newTrabalhos.toString()),);},
            child: Card(
              child: ListTile(
                  title: Text(
                    '3SIS',
                    style: TextStyle(fontSize: 25),
                  ),
                  subtitle: Text(
                    'Sistemas da Informação',
                    style: TextStyle(fontSize: 15),
                  )),

            ),
          ),
          GestureDetector(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChamadaForm(),),).then((newTrabalhos) => debugPrint(newTrabalhos.toString()),);},
            child: Card(
              child: ListTile(
                  title: Text(
                    '3SIR',
                    style: TextStyle(fontSize: 25),
                  ),
                  subtitle: Text(
                    'Sistemas da Informação',
                    style: TextStyle(fontSize: 15),
                  )),

            ),
          )
        ],
      ),
    );
  }
}
