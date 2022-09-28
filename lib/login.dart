import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'acesso.dart';
import 'splash.dart';
import 'homePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //String nome = "";
    //String sobrenome = "";
    //String email = "";
    //String senha = "";

    TextEditingController nomeEditingController = TextEditingController();
    TextEditingController emailEditingController = TextEditingController();

    

    return Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Pagina de login')),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text('Ensere seus dados',
                        style: TextStyle(fontSize: 20)),
                  ),
                  TextFormField(
                    controller: nomeEditingController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Nome',
                        icon: Icon(Icons.person),
                        hintText: 'Informe o nome'),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Sobrenome',
                        icon: Icon(Icons.person),
                        hintText: 'Informe o sobrenome'),
                  ),
                  TextFormField(
                    controller: emailEditingController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'E_mail',
                        icon: Icon(Icons.email_outlined),
                        hintText: 'Informe o email'),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'Senha',
                      icon: Icon(Icons.vpn_key_off_sharp),
                      hintText: 'Informe a senha',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        
                        if (_formKey.currentState!.validate()) {
                          String nome = nomeEditingController.text;
                          String email = emailEditingController.text;

                          // var db = await SharedPreferences.getInstance();
                          // db.setString('email', email);
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processando Dados')),
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AcessoPage(nome: nome,),
                            ),
                          );


                        }
                      },
                      child: const Text('Enviar'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: ()  {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                    },
                    child: Text('Pega uma imagem'),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
