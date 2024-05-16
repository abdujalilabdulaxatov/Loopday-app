import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uyga_vazifa/login_page/create_account.dart';
import 'package:uyga_vazifa/login_page/login.dart';
import 'package:uyga_vazifa/login_page/widgets/widgets.dart';

class Login_page1 extends StatefulWidget {
  const Login_page1({super.key});

  @override
  State<Login_page1> createState() => _Login_page1State();
}

class _Login_page1State extends State<Login_page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Gap(60),
              const Text(
                "Let's start your",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              const Text(
                'Set You Schoudle',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Gap(20),
              const Text(
                'Quicly see your upcoming event, task, conference calls, weather and more',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
              Container(
                width: double.infinity,
                height: 400,
                child: Image(image: AssetImage('images/photo2.png')),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      height: 55,
                      child: Elevatedbutton(
                          button_name: 'Create account',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => CreateAccount()),
                              ),
                            );
                          })),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppleGoogle(link: 'images/apple.png', name: 'Apple'),
                      AppleGoogle(link: 'images/google.png', name: 'Google'),
                    ],
                  ),
                  Gap(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'You have Account ?',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text_button(null, text_button_onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Login())));
                      }, name: 'Log in')
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
