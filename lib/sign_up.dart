import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText(),
                  customSizedBox(),
                  emailTextField(),
                  customSizedBox(),
                  passwordTextField(),
                  customSizedBox(),
                  signUpButton(),
                  backtoLoginPageButton(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Center signUpButton() {
    return Center(
        child: TextButton(
            onPressed: () {},
            child: Text(
              "Kayıt Ol",
              style: TextStyle(color: Colors.yellow),
            )));
  }

  Center backtoLoginPageButton() {
    return Center(
        child: TextButton(
            onPressed: () => Navigator.pushNamed(context, '/loginPage'),
            child: Text(
              "Giriş Sayfasına Dön",
              style: TextStyle(color: Colors.yellow),
            )));
  }

  TextFormField passwordTextField() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: customInputDecoration("Şifre"),
    );
  }

  TextFormField emailTextField() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: customInputDecoration("E-posta"),
    );
  }

  Text titleText() {
    return Text(
      "Merhaba, \nHoşgeldin",
      style: TextStyle(
          fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget customSizedBox() => SizedBox(height: 20);

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
    );
  }
}
