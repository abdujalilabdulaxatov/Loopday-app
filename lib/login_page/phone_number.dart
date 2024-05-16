import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:uyga_vazifa/login_page/page_1.dart';
import 'package:uyga_vazifa/login_page/widgets/widgets.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Country of residance',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                        Gap(20),
                        const Text(
                          "Add your phone number for Verification ID",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Gap(30),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                  margin: EdgeInsets.only(left: 2, right: 20),
                                  width: 150,
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                    color: Color.fromARGB(255, 219, 219, 219),
                                    border: Border(
                                        right:
                                            BorderSide(color: Colors.black54)),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'images/uzbekistan.png'),
                                                fit: BoxFit.fill)),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down_sharp),
                                      ),
                                      const Text(
                                        '+998',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Send it another way ?',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text_button(null,
                                text_button_onTap: () {}, name: 'Email')
                          ],
                        ),
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
                  onTap: () {},
                ),
                Gap(20),
                Text_Privacy(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
