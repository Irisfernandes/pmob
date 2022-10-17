import 'package:flutter/material.dart';
import 'package:iris_login/registro_user.dart';

class RegistroUser extends StatefulWidget {
  const RegistroUser({Key? key}) : super(key: key);

  @override
  _RegistroUserState  createState() => _RegistroUserState();
}

class _RegistroUserState extends State<RegistroUser> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              buildCardCafeHeader(),
              const SizedBox(height: 42),
              TextFormField(
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'Campo e-mail obrigatório';
                  }
                  return null;
                },
                controller: userController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Usuário'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'Campo e-mail obrigatório';
                  }
                  return null;
                },
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'E-mail'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                obscureText: true,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo senha obrigatório';
                  } else if (value.length < 8) {
                    return 'Senha deve possuir no mínimo 8 digitos';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: onPressed,
                style:
                ElevatedButton.styleFrom(primary: const Color(0xFF3E2723)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: onPressedRegistro,
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Cadastrar usuário',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFE81F7C),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String emailDigitado = emailController.text;
      String passwordDigitado = passwordController.text;

      User userCriado =
      User(username: userDigitado,
          email: emailDigitado,
          password: passwordDigitado)
      await
      UserDao().salvarUser(user: userCriado);
      showSnackBar('Usuário salvo!');
      Navigator.pop(context);
    } else {
      showSnackBar("Erro na validação");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  onPressedRegistro() {}

}
