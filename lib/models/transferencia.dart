class Transferencia {
  final int numeroConta;
  final double valor;

  Transferencia({
    this.numeroConta,
    this.valor,
  });

  @override
  String toString() {
    return 'Transferência de $valor reais realizada para a conta $numeroConta.';
  }
}
