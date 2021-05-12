class contaCorrente {
  String titular ;
  int agencia;
  int conta;
  double saldo = 20.0;

  bool saque(double valorSaque) {
    print('Conta de ${this.titular}'.toUpperCase());

    if (this.saldo - valorSaque < -100) {
      print('Sem saldo suficiente.');
      return false;
    } else {
      print('Sacando $valorSaque reais...');
      this.saldo -= valorSaque;
      print('Saldo de ${this.titular}: ${this.saldo} reais.');
      return true;
      }
  }

  double deposito(double valorDeposito) {
    this.saldo += valorDeposito;
    print('Deposito realizado com sucesso! Saldo atual de ${this.titular}: ${this.saldo} reais.');
    return this.saldo;
  }
}

void main() {
  contaCorrente conta1 = contaCorrente();
  conta1.titular = 'Amanda';
  bool resposta1 = conta1.saque(80.0);
  // print(resposta1);
  double novoSaldo1 = conta1.deposito(200.0);
  // print('Deposito realizado com sucesso! Salvo atual de ${conta1.titular}: ${novoSaldo1} reais.');


  contaCorrente conta2 = contaCorrente();
  conta2.titular = 'Thiago';
  bool resposta2 = conta2.saque(95.0);
  // print(resposta2);
  double novoSaldo2 = conta2.deposito(200.0);
  // print('Deposito realizado com sucesso! Salvo atual de ${conta2.titular}: ${novoSaldo2} reais.');

}