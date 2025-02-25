import 'package:flutter/material.dart';
import 'package:task2/utils.dart';

class MainPage extends StatelessWidget {
  final String imgname;
  const MainPage({super.key, required this.imgname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/$imgname.jpeg'),
              opacity: 0.65,
              fit: BoxFit.cover,
            ),
          ),
          //MAIN COLUMN
          child: Column(
            children: [
              //TOP BAR
              topBar(),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //search
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            width: 270,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.search, color: Colors.white),
                                SizedBox(width: 8),
                                Text(
                                  'Search "how to water plants"',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //second avatar line
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('images/pfp2.jpeg'),
                                radius: 18,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "@ThePlantiBoys",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "Subscribe",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "He tells me when he's thirsty... 🥰",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 3, bottom: 10, left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.music_note, color: Colors.white70, size: 18),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "School Rooftop (Bird Sounds) · hisohkah",
                                  style: TextStyle(color: Colors.white70, fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      ActionWidget(icon: Icons.thumb_up_alt_outlined, name: "1.14M"),
                      ActionWidget(icon: Icons.thumb_down_alt_outlined, name: "Dislike"),
                      ActionWidget(icon: Icons.chat_bubble_outline, name: "4,095"),
                      ActionWidget(icon: Icons.reply, name: "Share"),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }

  SingleChildScrollView topBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const TabItem(
            icon: Icon(
              Icons.subscriptions,
              size: 20,
            ),
            name: "Subscriptions",
          ),
          TabItem(
            icon: Image.asset(
              'images/icon_tab_1.png',
              width: 25,
            ),
            name: "Live",
          ),
          const TabItem(
            icon: Icon(
              Icons.people_alt,
              size: 20,
            ),
            name: "Popular",
          ),
          const TabItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 20,
            ),
            name: "Beauty",
          ),
          const TabItem(
            icon: Icon(
              Icons.gamepad,
              size: 20,
            ),
            name: "Gaming",
          ),
        ],
      ),
    );
  }
}
