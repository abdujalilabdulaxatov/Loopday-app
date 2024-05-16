import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uyga_vazifa/login_page/page_1.dart';
import 'package:uyga_vazifa/login_page/widgets/widgets.dart';

class TabBar_page extends StatefulWidget {
  const TabBar_page({super.key});

  @override
  State<TabBar_page> createState() => _TabBar_pageState();
}

class _TabBar_pageState extends State<TabBar_page> {
  Widget home_screen_images(String link, int num) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(link),
              width: double.infinity,
              height: 480,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                num == 1
                    ? Container(
                        width: 18,
                        height: 5,
                        decoration: BoxDecoration(
                            color: num == 1
                                ? Color.fromARGB(255, 58, 33, 243)
                                : null,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : const CircleAvatar(
                        radius: 3,
                        backgroundColor: Color.fromARGB(255, 58, 33, 243),
                      ),
                Gap(3),
                num == 2
                    ? Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 18,
                        height: 5,
                        decoration: BoxDecoration(
                            color: num == 2
                                ? Color.fromARGB(255, 58, 33, 243)
                                : null,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : const CircleAvatar(
                        radius: 3,
                        backgroundColor: Color.fromARGB(255, 58, 33, 243),
                      ),
                Gap(3),
                num == 3
                    ? Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 18,
                        height: 5,
                        decoration: BoxDecoration(
                            color: num == 3
                                ? Color.fromARGB(255, 58, 33, 243)
                                : null,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : const CircleAvatar(
                        radius: 3,
                        backgroundColor: Color.fromARGB(255, 58, 33, 243)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Gap(50),
                  Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    height: 570,
                    child: TabBarView(children: [
                      home_screen_images('images/photo1.jpg.png', 1),
                      home_screen_images('images/photo2.png', 2),
                      home_screen_images('images/photo3.png', 3),
                    ]),
                  ),
                  const Text(
                    'Set You Schoudle',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 43),
                  ),
                  const Gap(15),
                  Container(
                    width: 380,
                    child: const Text(
                      'Quicly see your upcoming event, task, conference calls, weather and more',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 17),
                    ),
                  ),
                  Gap(30),
                  Container(
                      width: 310,
                      height: 55,
                      child: Elevatedbutton(
                          button_name: 'Get Started',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Login_page1()),
                              ),
                            );
                          }))
                ],
              ),
            ),
          ),
        ));
  }
}
