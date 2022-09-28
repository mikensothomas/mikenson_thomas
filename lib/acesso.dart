import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mikenson_thomas/login.dart';
import 'about.dart';
import 'homePage.dart';

class AcessoPage extends StatefulWidget {
  String nome;
  AcessoPage({required this.nome});

  @override
  _AcessoPageState createState() => _AcessoPageState();
}

class _AcessoPageState extends State<AcessoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        automaticallyImplyLeading: false,
        title: Center(child: Text('Pagina de acesso')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(widget.nome),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => About(
                            titulo: 'Pagina de dados',
                          )),
                );
              },
              child: Text('Proxima Página'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('Voltar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Pega imagem'),
            ),
          ],
        ),
      ),
    );
  }
}
