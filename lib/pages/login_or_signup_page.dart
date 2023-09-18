import 'package:flutter/material.dart';
import 'package:flutter_application_horoscope/pages/login_page.dart';
import 'package:flutter_application_horoscope/pages/signup_page.dart';

class LoginAndSignup extends StatefulWidget {
  const LoginAndSignup({Key? key}) : super(key: key);

  @override
  State<LoginAndSignup> createState() => _LoginAndSignupState();
}

class _LoginAndSignupState extends State<LoginAndSignup> {
  bool islogin = true;

  void togglePage() {
    islogin = !islogin;
  }

  @override
  Widget build(BuildContext context) {
    if (islogin) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else {
      return SignUP(
        onPressed: togglePage,
      );
    }
  }
}
