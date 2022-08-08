import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFF8EFE9),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 25 ),
                decoration: InputDecoration(
                    labelText: 'E-mail:',
                    labelStyle: TextStyle(color: Colors.black)),

              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.white, fontSize: 25 ),
                decoration: InputDecoration(
                    labelText: 'Senha:',
                    labelStyle: TextStyle(color: Colors.black)),

              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: ()  => {} ,
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black)
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
