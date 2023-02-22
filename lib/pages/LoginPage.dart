import 'package:app_shopping/Comm/genTextFormField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginPage> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Image.asset(
                  'images/login.png',
                  height: 200,
                  width: 200,
                ),
                Text(
                  "Shoes App",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
                //Uso da controler para manipular o campo de nome
                getTextFormFiel(
                  controller: _conUserId,
                  icon: Icons.person,
                  txtName: "Nome",
                ),
                SizedBox(height: 10),
                //Uso da controler para manipular o campo de senha
                getTextFormFiel(
                  controller: _conPassword,
                  icon: Icons.lock,
                  txtName: "Senha",
                  obscureText: true,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "homePage");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Não tem uma conta?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "signupForm");
                        },
                        child: Text("Inscreva-se"),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Lista de Usuarios Cadastrados"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "listUser");
                        },
                        child: Text("Listar Usuarios"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
