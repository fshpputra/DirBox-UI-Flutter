import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Your Dribbbox',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF22215B),
                ),
              ),
              Image.asset("assets/icons/union.png")
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: IconButton(
                onPressed: () {},
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 5),
                    Text("Search Folder"),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFF22215B),
                  ),
                ),
                Container(
                  width: 220,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/vector-bawah.png"),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/hamber.png"),
                      Image.asset("assets/icons/jendela.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder1.png"),
                  title: "Mobile Apps",
                  date: "December 20.2023",
                  colors: Color(0xFF415EB6),
                  bgcolor: Color(0xFFEEF7FE),
                  icon: Image.asset("assets/icons/1.png"),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder2.png"),
                  title: "SVG Icons",
                  date: "December 14.2023",
                  colors: Color(0xFFFFB110),
                  bgcolor: Color(0xFFFFFBEC),
                  icon: Image.asset("assets/icons/2.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder3.png"),
                  title: "Prototypes",
                  date: "December 22.2023",
                  colors: Color(0xFFAC4040),
                  bgcolor: Color(0xFFFEEEEE),
                  icon: Image.asset("assets/icons/3.png"),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder4.png"),
                  title: "Avatars",
                  date: "December 10.2023",
                  colors: Color(0xFF23B0B0),
                  bgcolor: Color(0xFFF0FFFF),
                  icon: Image.asset("assets/icons/4.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder1.png"),
                  title: "Design",
                  date: "December 20.2023",
                  colors: Color(0xFF415EB6),
                  bgcolor: Color(0xFFEEF7FE),
                  icon: Image.asset("assets/icons/1.png"),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder2.png"),
                  title: "Portofolio",
                  date: "December 14.2023",
                  colors: Color(0xFFFFB110),
                  bgcolor: Color(0xFFFFFBEC),
                  icon: Image.asset("assets/icons/2.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder3.png"),
                  title: "Refenrence",
                  date: "December 22.2023",
                  colors: Color(0xFFAC4040),
                  bgcolor: Color(0xFFFEEEEE),
                  icon: Image.asset("assets/icons/3.png"),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder4.png"),
                  title: "Clients",
                  date: "December 10.2023",
                  colors: Color(0xFF23B0B0),
                  bgcolor: Color(0xFFF0FFFF),
                  icon: Image.asset("assets/icons/4.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  image: Image.asset("assets/icons/folder1.png"),
                  title: "Pictures",
                  date: "December 20.2023",
                  colors: Color(0xFF415EB6),
                  bgcolor: Color(0xFFEEF7FE),
                  icon: Image.asset("assets/icons/1.png"),
                ),
                CardFolder(
                  image: Image.asset("assets/icons/folder2.png"),
                  title: "Vidio",
                  date: "December 14.2023",
                  colors: Color(0xFFFFB110),
                  bgcolor: Color(0xFFFFFBEC),
                  icon: Image.asset("assets/icons/2.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.colors,
    required this.image,
    required this.bgcolor,
    required this.icon,
  });

  final String title;
  final String date;
  final Color colors;
  final Image image;
  final Color bgcolor;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: bgcolor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              icon,
            ],
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: colors,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontSize: 10,
              color: colors,
            ),
          ),
        ],
      ),
    );
  }
}
