import 'package:flutter/material.dart';
import 'package:task2/main_page.dart';
import 'package:task2/pages.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 1;
  List<Widget> pages = [
    const Page1(),
    PageView(
      scrollDirection: Axis.vertical,
      children: const [
        MainPage(imgname: "image1"),
        MainPage(imgname: "image2"),
        MainPage(imgname: "image3"),
        MainPage(imgname: "image4"),
      ],
    ),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  void onButtonTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shorts',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(top: true, bottom: true, child: pages[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onButtonTap,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: selectedIndex == 0 ? const Icon(Icons.home, size: 30) : const Icon(Icons.home_outlined, size: 30),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Image.asset(
              selectedIndex == 1 ? 'images/youtube_black.png' : 'images/youtube_outline.png',
              height: 30,
            ),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Transform.translate(
              offset: const Offset(0, 7),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? const Icon(Icons.subscriptions, size: 30)
                  : const Icon(Icons.subscriptions_outlined, size: 30),
              label: "Followed"),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('images/pfp.png'),
              ),
              label: "You"),
        ],
      ),
    );
  }
}
