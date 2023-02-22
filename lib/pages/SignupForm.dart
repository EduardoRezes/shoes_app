import 'package:app_shopping/Comm/genTextFormField.dart';
import 'package:app_shopping/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _conUserId = TextEditingController();
  final _conUserNickName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPhone = TextEditingController();
  final _conPassword = TextEditingController();
  final _conPasswordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Usuario"),
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
                getTextFormFiel(
                  controller: _conUserId,
                  icon: Icons.person,
                  keyboardType: TextInputType.name,
                  txtName: "Nome",
                ),
                SizedBox(height: 5),
                getTextFormFiel(
                  controller: _conUserNickName,
                  icon: Icons.person_pin,
                  keyboardType: TextInputType.name,
                  txtName: "Sobrenome",
                ),
                SizedBox(height: 5),
                getTextFormFiel(
                  controller: _conEmail,
                  icon: Icons.mail,
                  keyboardType: TextInputType.emailAddress,
                  txtName: "E-mail",
                ),
                SizedBox(height: 5),
                getTextFormFiel(
                  controller: _conPhone,
                  icon: Icons.phone,
                  txtName: "Telefone",
                ),
                SizedBox(height: 5),
                //Uso da controler para manipular o campo de senha
                getTextFormFiel(
                  controller: _conPassword,
                  icon: Icons.lock,
                  txtName: "Senha",
                  obscureText: true,
                ),
                SizedBox(height: 5),
                getTextFormFiel(
                  controller: _conPasswordConfirm,
                  icon: Icons.lock,
                  txtName: "Confirmar Senha",
                  obscureText: true,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
