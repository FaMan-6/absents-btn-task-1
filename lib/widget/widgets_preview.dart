import 'package:absents_btn/widget/menu_dashboard.dart';
import 'package:absents_btn/widget/navbar_profile.dart';
import 'package:flutter/material.dart';

class WidgetsPreview extends StatelessWidget {
  const WidgetsPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: NavbarProfile(
          name: 'John Doe',
          job: 'Maintenance Ops',
        ),
      ),
    );
  }
}
