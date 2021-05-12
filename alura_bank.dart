class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  bool verificarSaldo(double valor) {
    if (this.saldo - valor < this.chequeEspecial) {
      print('Sem saldo suficiente.');
      return false;
    } else {
      print('Movimentando $valor reais...');
      return true;
    }
  }

  bool saque(double valorSaque) {
    if (!verificarSaldo(valorSaque)) {
      return false;
    } else {
      this.saldo -= valorSaque;
      print(
          'Sacando $valorSaque reais... Saldo de ${this.titular}: $saldoSaque reais.');
      return true;
    }
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (!verificarSaldo(valorTransferencia)) {
      return false;
    } else {
      this.saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      print(
          'Transferencia de $valorTransferencia reais realizada com sucesso! Saldo atual de ${this.titular}: ${saldoAposTransferencia} reais.');
      return true;
    }
  }

  double deposito(double valorDeposito) {
    double saldoDeposito = (this.saldo + valorDeposito);
    print(
        'Deposito de $valorDeposito reais realizado com sucesso! Saldo atual de ${this.titular}: $saldoDeposito reais.');
    return saldoDeposito;
  }
}

void main() {
  ContaCorrente conta1 = ContaCorrente();
  conta1.titular = 'Amanda';
  conta1.chequeEspecial = -110;
  bool resposta1 = conta1.saque(80.0);
  double novoSaldo1 = conta1.deposito(500.0);
  // print('Deposito realizado com sucesso! Salvo atual de ${conta1.titular}: ${novoSaldo1} reais.');
  // bool transferencia1 = conta1.transferencia(800, conta2);

  ContaCorrente conta2 = ContaCorrente();
  conta2.titular = 'Thiago';
  conta2.chequeEspecial = -350;
  bool resposta2 = conta2.saque(95.0);
  // print(resposta2);
  double novoSaldo2 = conta2.deposito(200.0);
  // print('Deposito realizado com sucesso! Salvo atual de ${conta2.titular}: ${novoSaldo2} reais.');

  // Transferencias:
  // bool transferencia1 = conta1.transferencia(80, conta2);
  // bool transferencia2 = conta2.transferencia(10, conta1);
}
