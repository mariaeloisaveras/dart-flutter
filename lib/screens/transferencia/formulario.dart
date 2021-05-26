import 'package:bitebank/components/editor.dart';
import 'package:bitebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Realizar transferência';

const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';

const _rotuloCampoNumeroConta = 'Número da conta';
const _dicaCampoNumeroConta = '0000';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _tituloAppBar,
          style: TextStyle(fontSize: 24, color: Colors.brown[400]),
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                controlador: _controladorCampoNumeroConta,
                rotulo: _rotuloCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
              ),
              Editor(
                controlador: _controladorCampoValor,
                rotulo: _rotuloCampoValor,
                dica: _dicaCampoValor,
                icone: Icons.monetization_on,
              ),
              ElevatedButton(
                  child: Text(_textoBotaoConfirmar),
                  onPressed: () {
                    _criarTransferencia(context);
                    // Scaffold.of(context).showSnackBar(
                    //   SnackBar(
                    //     content: Text(
                    //       'Transferencia realizada com sucesso!',
                    //       textAlign: TextAlign.center,
                    //     ),
                    //     duration: const Duration(milliseconds: 3500),
                    //     width: 280.0, // Width of the SnackBar.
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 8.0, // Inner padding for SnackBar content.
                    //     ),
                    //     behavior: SnackBarBehavior.floating,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //     ),
                    //   ),
                    // );
                  }),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      // final transferenciaCriada = Transferencia(numeroConta, valor);
      final transferenciaCriada =
          Transferencia(numeroConta: numeroConta, valor: valor);
      // debugPrint('Criando transferencia');
      // debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
