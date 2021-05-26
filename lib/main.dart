import 'package:bitebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BiteBankApp());

class BiteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        // DeviceOrientation.landscapeLeft,
        // DeviceOrientation.landscapeRight,
        //   DeviceOrientation.portraitDown,
        //   DeviceOrientation.portraitUp,
      ],
    );
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent[100],
        accentColor: Colors.brown[400],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.brown[400],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: ListaTransferencia(),
    );
  }
}
