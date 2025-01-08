import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final String background;
  final String title;
  const Menu({super.key, required this.background, required this.title});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.background);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(widget.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                letterSpacing: 1,
                color: Colors.grey[850],
              ),
            ),
          )
        ],
      ),
    );
  }
}
