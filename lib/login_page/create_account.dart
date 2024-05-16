import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uyga_vazifa/login_page/page_1.dart';
import 'package:uyga_vazifa/login_page/phone_number.dart';
import 'package:uyga_vazifa/login_page/widgets/widgets.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController1 = TextEditingController();
    TextEditingController passwordController2 = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Login_page1()),
                      ),
                    );
                  },
                  icon: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 214, 214, 214)),
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                    ),
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      Gap(20),
                      const Text(
                        'Create your account for you schedule',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Gap(30),
                      Email(name: 'Your name', ikon: Icon(Icons.person)),
                      Gap(20),
                      Email(
                          name: 'Your email', ikon: Icon(Icons.email_outlined)),
                      Gap(20),
                      Password_container(name: 'new password'),
                      Gap(20),
                      Password_container(name: 'repeat password'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("You have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Sign in here',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Elevatedbutton(
                      button_name: 'Continue',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => PhoneNumber()),
                          ),
                        );
                      }),
                  Gap(20),
                  Text_Privacy()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
