import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:nac2/models/trabalhos_model.dart';

class TrabalhosForm extends StatefulWidget {
  @override
  _TrabalhosFormState createState() => _TrabalhosFormState();
}

class _TrabalhosFormState extends State<TrabalhosForm> {
  final TextEditingController _turmaController = TextEditingController();
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _temaController = TextEditingController();
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _entregaController = TextEditingController();


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
                        'Adicionar uma nova avaliação: ',
                        style: TextStyle(fontSize: 25.0),
                      )),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              controller: _turmaController,
              decoration: InputDecoration(
                labelText: 'Turma',
              ),
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              controller: _tituloController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DropDownField(
              labelText: 'Tipo',
              textStyle: TextStyle(fontSize: 25.0),
        
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: new TextField(
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              controller: _tipoController,
              decoration: InputDecoration(
                labelText: 'Tipo',
              ),
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              controller: _temaController,
              decoration: InputDecoration(
                labelText: 'Tema',
              ),
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              textInputAction: TextInputAction.next,
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              controller: _pesoController,
              decoration: InputDecoration(
                labelText: 'Peso',
              ),
              style: TextStyle(fontSize: 25.0),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _entregaController,
              decoration: InputDecoration(
                labelText: 'Entrega',
              ),
              style: TextStyle(fontSize: 25.0),
              keyboardType: TextInputType.datetime,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: RaisedButton(
              child: Text(
                'Cadastrar Trabalho',
                style: TextStyle(color: Colors.black45),
              ),
              color: Colors.cyanAccent,
              onPressed: () {
                final String turma = _turmaController.text;
                final String titulo = _tituloController.text;
                final String tipo = _tipoController.text;
                final String tema = _temaController.text;
                final double peso = double.tryParse(_pesoController.text);
                final String entrega = _entregaController.text;
                final TrabalhosModel newTrabalhos = TrabalhosModel(
                    turma, titulo, tipo, tema, peso, entrega);
                Navigator.pop(context, newTrabalhos);
              },
            ),
          )
        ],
      ),
    );
  }
}

List<String> tipoLista = [
  "avaliação individual",
  "avaliação conjunta",
  "trabalho individual"
  "trabalho conjunto"
];




