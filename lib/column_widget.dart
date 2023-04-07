import 'package:flutter/material.dart';

class Columnwidget extends StatelessWidget {
  const Columnwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Colomn"),
      ),
      body: Column(children: const [
        Text("Kolom 1"),
        Text("Kolom 2"),
        Text("Kolom 3"),
        Text("Kolom 4")
      ]),
    );
  }
}
