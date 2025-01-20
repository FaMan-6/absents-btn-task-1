import 'package:flutter/material.dart';

class DashboardCheckin extends StatelessWidget {
  const DashboardCheckin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 11.0,
          horizontal: 6.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Image.asset(
                        'assets/images/send-plus.png',
                        color: Colors.blueAccent,
                      ),
                      Text(
                        'Clock In Now',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Text(
                    '07.56, 28 March 2024',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              color: Colors.grey,
              width: 0.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    Image.asset(
                      'assets/images/geo-alt.png',
                      color: Colors.blueAccent,
                    ),
                    Text(
                      'Go to BTN Absent',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                Text(
                  'See more BTN Absent',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
