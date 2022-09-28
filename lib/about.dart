import 'package:flutter/material.dart';
import 'login.dart';
import 'homePage.dart';

class About extends StatefulWidget {
  String titulo;

  About({Key? key, required this.titulo}) : super(key: key);

  @override
  State<About> createState() => _DadosState();
}

class _DadosState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(widget.titulo)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volta'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                    ((route) => false));
              },
              child: Text('Pega imagem'),
            ),
          ],
        ),
      ),
    );
  }
}
