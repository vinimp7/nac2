class AlunosModel {
  var nome;
  var rm;
  var selected = false;

  AlunosModel(this.nome, this.rm);

  @override
  String toString() {
    return 'AlunosModel{nome: $nome, rm: $rm, selected: $selected}';
  }
}