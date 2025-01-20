import 'package:flutter/material.dart';

class MenuDashboard extends StatelessWidget {
  final String title;
  final String image;
  const MenuDashboard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 56,
            width: 56,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
