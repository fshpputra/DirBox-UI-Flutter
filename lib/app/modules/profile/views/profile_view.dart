import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF2F2F2),
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.arrow_back_ios_new ,
            color: Color(0xFF22215B),
            ),
          ),
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
              ),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            // height: 275,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                  Container(
                    width: 75,
                    height: 75,
                    child: Image.asset(
                      "assets/images/profile1.png"
                      ),
                    ),
                    Text(
                      "Fiqri Sepdian H.P",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Android Development",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF22215B).withOpacity(0.6),
                      ),
                    ),                    
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFF317B),
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF22215B),
                      ),
                  ),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/Add.png"),
                      Image.asset("assets/icons/Settings.png"),
                      Image.asset("assets/icons/Vector.png"),
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
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color(0xFF22215B),                    
                  ),
                ),
                Image.asset("assets/icons/sort.png"),
              ],
            ),
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/icons/word.png",
                fit: BoxFit.cover,
                ),
              ),
            title: Text("Projects.docx"),
            subtitle: Text("Novemaber 22.2023"),
            trailing: Text("300kb"),
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
