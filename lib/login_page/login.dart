import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uyga_vazifa/login_page/phone_number.dart';
import 'package:uyga_vazifa/login_page/widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool check_email(String email) {
    if (email.contains('@')) {
      print(email);
      return true;
    } else {
      return false;
    }
  }

  bool check_password(String password) {
    if (password.length >= 8) {
      print(password);
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(40),
                const Text(
                  'Welcome back',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                ),
                Gap(20),
                const Text(
                  "Let's Login to Connect your email",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                Gap(20),
                Email(
                    name: 'name@example.com', ikon: Icon(Icons.email_outlined)),
                Gap(20),
                Password_container(name: 'enter password'),
                Gap(20),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget your password ?',
                      style: TextStyle(color: Colors.black54),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up here',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Elevatedbutton(
                      button_name: 'Log in',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => PhoneNumber())));
                      }),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppleGoogle(link: 'images/apple.png', name: 'Apple'),
                      AppleGoogle(link: 'images/google.png', name: 'Google'),
                    ],
                  ),
                  Gap(20),
                  Text_Privacy()
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
