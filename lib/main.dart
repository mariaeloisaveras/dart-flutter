import 'package:bitebank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BiteBankApp());
  // save(Contact(id: 1, name: 'fran', accountNumber: 99));
}

class BiteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue[600],
          accentColor: Colors.blue[200],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue[200],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(),
    );
  }
}
