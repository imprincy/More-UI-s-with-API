import 'package:flutter/material.dart';

class AboutMovie extends StatelessWidget {
  const AboutMovie({super.key});

  @override
  Widget build(BuildContext context) {

    int id = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("Details of Movie"),
        elevation: 8,
      ),body: Center(
      child: Text(
        id.toString()
      ),
    ),
    );
  }
}
