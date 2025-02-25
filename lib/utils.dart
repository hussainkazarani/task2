import 'dart:ui';
import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  const ActionWidget({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          const Spacer(),
          Column(
            children: [Icon(icon, size: 45), Text(name)],
          )
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String name;
  final IconData icon;

  const TabItem({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 5, left: 8),
                  child: Icon(icon, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 5),
                  child: Text(name, style: const TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
