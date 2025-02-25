import 'package:flutter/material.dart';
import 'package:task2/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const NavBar(),
    );
  }
}

















// ListView.builder(
//   scrollDirection: Axis.horizontal, // Makes it scroll horizontally
//   itemCount: 10, // Number of items
//   itemBuilder: (context, index) {
//     return Container(
//       margin: EdgeInsets.all(8),
//       width: 100, // Fixed width for each item
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       alignment: Alignment.center,
//       child: Text(
//         'Item $index',
//         style: TextStyle(color: Colors.white),
//       ),
//     );
//   },
// )
