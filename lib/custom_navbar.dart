import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomNavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int value) onTap;

  const CustomNavBar({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        onTap(value);
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "List"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Profile")
      ],
      currentIndex: pageIndex,
    );
  }
}
