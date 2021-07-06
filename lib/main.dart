import 'package:encuestas/src/encuestapendiente.dart';
import 'package:encuestas/src/encuestas.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page',
      color: Colors.blue,
      routes: {
        'enc': (context) => Encuestas(),
        'page': (context) => Encuesta(),
      },
    );
  }
}
