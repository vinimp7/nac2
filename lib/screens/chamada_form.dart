import 'package:flutter/material.dart';
import 'package:nac2/models/alunos_model.dart';
String validation="yes";


class ChamadaForm extends StatefulWidget {
  @override
  _ChamadaFormState createState() => _ChamadaFormState();
}

class _ChamadaFormState extends State<ChamadaForm> {
  //var _students = [Student('foo'), Student('pub'), Student('beer')];
  var _alunos = [AlunosModel('João', 12345), AlunosModel('Maria', 12344), AlunosModel('Pelé', 12343), ];
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
        body:
        validation=="1"?
        new Center(
          child: Text("Sem Resposta"),
        ):
            ListView.builder(
                itemCount: _alunos.length,
                itemBuilder: (BuildContext context, int index){
                  return new Container(
                    child: new Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                          new Card(
                            child: new Container(
                              child: CheckboxListTile(
                                title: Text(
                                  _alunos[index].nome.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("RM: ${_alunos[index].rm}"),
                                value: _alunos[index].selected,
                                onChanged: (val){
                                  setState(() {
                                    _alunos[index].selected = val;
                                    if (!_alunos[index].selected){
                                      print('${_alunos[index].nome}: faltou!');
                                    }
                                    if(_alunos[index].selected){
                                      print('${_alunos[index].nome}: presente!');
                                    }
                                  });
                                },
                              ),
                              padding: EdgeInsets.all(5),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
            }

            )
    );
  }
}
