import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:nac2/screens/trabalhos_form.dart';

class Trabalhos extends StatelessWidget {
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
                'Trabalhos e Provas',
                style: TextStyle(fontSize: 25.0),
              )),
            )),
          ),
          Card(
            child: ListTile(
                title: Text(
                  'Trabalho 1',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  'Trabalho 1 descrição',
                  style: TextStyle(fontSize: 15),
                )),
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.cyanAccent,
        curve: Curves.elasticIn,
        children: [
          SpeedDialChild(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrabalhosForm(),),).then((newTrabalhos) => debugPrint(newTrabalhos.toString()),);},
            child: Icon(Icons.add),
            label: "Nova Avaliação",
            backgroundColor: Colors.cyanAccent,
          ),
        ],

      ),




    );
  }
}
