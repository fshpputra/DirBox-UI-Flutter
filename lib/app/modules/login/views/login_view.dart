import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // background
            Container(
              width: Get.width,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
              ),
            ),
            // layer body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 110),
                  Container(
                    width: 190,
                    height: 190,
                    child: Image.asset(
                      "assets/images/pic-1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Dirbbox",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 260,
                    child: Text(
                      "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/finger.png"),
                            SizedBox(width: 10),
                            Text(
                              "Smart Id",
                              style: TextStyle(
                                color: Color(0xFF567DF4),
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFDEE6FE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset("assets/icons/panah.png"),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF567DF4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Use Social Login"
                      ),
                    ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/icons/ig.png",
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        "assets/icons/tw.png",
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        "assets/icons/fb.png",
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Create an account",
                        style: TextStyle(
                          fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
