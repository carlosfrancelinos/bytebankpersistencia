import 'package:bytebanknew/databases/http/webclient.dart';
import 'package:bytebanknew/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BytebankApp());
  findaAll();
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: Colors.blueAccent[700]),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent[700],
        )),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const Dashboard(),
    );
  }
}
