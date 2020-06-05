class TrabalhosModel {
  final String turma;
  final String titulo;
  final String tipo;
  final String tema;
  final double peso;
  final String entrega;

  TrabalhosModel(this.turma, this.titulo, this.tipo, this.tema, this.peso, this.entrega);

  @override
  String toString() {
    return 'TrabalhosModel{turma: $turma, titulo: $titulo, tipo: $tipo, tema: $tema, peso: $peso, entrega: $entrega}';
  }
}
