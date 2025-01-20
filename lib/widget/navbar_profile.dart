import 'package:flutter/material.dart';

class NavbarProfile extends StatelessWidget {
  final String name;
  final String job;
  const NavbarProfile({super.key, required this.name, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: 'Hi, ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                      text: name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                maxLines: 2,
              ),
              Text(
                job,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
