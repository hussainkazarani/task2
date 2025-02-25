import 'package:flutter/material.dart';
import 'package:task2/utils.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/catimage.jpeg"),
            opacity: 0.65,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TOP BAR
            topBar(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            ActionWidget(icon: Icons.thumb_up_alt_outlined, name: "1.14M"),
            ActionWidget(icon: Icons.thumb_down_alt_outlined, name: "Dislike"),
            ActionWidget(icon: Icons.chat_bubble_outline, name: "4,095"),
            ActionWidget(icon: Icons.share, name: "Share"),
            //BOTTOM MATTER
            Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
              //search
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "@ThePlantiBoys",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Subscribe",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "He tells me when he's thirsty... 🥰",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.music_note, color: Colors.white, size: 18),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "School Rooftop (Bird Sounds) · hisohkah",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }

  SingleChildScrollView topBar() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TabItem(
            icon: Icons.subscriptions,
            name: "Subscriptions",
          ),
          TabItem(
            icon: Icons.live_tv_outlined,
            name: "Live",
          ),
          TabItem(
            icon: Icons.fireplace_outlined,
            name: "Trends",
          ),
          TabItem(
            icon: Icons.shopping_bag,
            name: "Beauty",
          ),
          TabItem(
            icon: Icons.gamepad,
            name: "Gaming",
          ),
        ],
      ),
    );
  }
}
