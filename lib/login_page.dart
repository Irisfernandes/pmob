import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState  createState() => _LoginPageState();
}
buildBody() {
  return Container(
      child: Column(
      children: [
      buildCardCafeHeader(),
        buildPadding(),
],
  ),
  );
}
buildPadding(){
  return Padding(
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
                labelText: 'Usuário:',
                labelStyle: TextStyle(color: Colors.black)),
          ),

          Divider(),
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
            style: new TextStyle(color: Colors.black, fontSize: 25 ),
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
                  style: TextStyle(color: Colors.white)
              ),
              color: Colors.brown
            ),
          ),
          IconButton(onPressed: (){}, icon: Image(image: NetworkImage("data:image/png;base64,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"),))
        ],
      ),
    ),
  );
}

buildCardCafeHeader() {
  return Container(
    margin: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: const Color(0xFFF8EFE9),
      image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/55/57/43/555743eae8ab6f20333e5c55d0789713.jpg'),
          fit: BoxFit.cover),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(36),
        topRight: Radius.circular(36),
        bottomRight: Radius.circular(36),
        bottomLeft: Radius.circular(36),
      ),
    ),
    padding: EdgeInsets.all(150),
  );
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
        body: buildBody(),
    );
  }
  onPressed() {
    if (_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String passwordDigitado = passwordController.text;

      String user = "isf2@gmail.com";
      String password = "c2n%h20";

      if (user == userDigitado && password == passwordDigitado) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      } else {
        print('Usuário/Senha incorretos');
      }
    } else {
      print("Erro na validação");
    }

  }
}
