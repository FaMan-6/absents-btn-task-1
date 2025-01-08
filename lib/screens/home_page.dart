import 'package:absents_btn/widget/activity_card.dart';
import 'package:absents_btn/widget/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 270,
                    // decoration: BoxDecoration(
                    //     border: Border(bottom: BorderSide(color: Colors.black))),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 221,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/Header.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60),
                                bottomRight: Radius.circular(60),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/Avatar.png'),
                                    height: 48,
                                    width: 48,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    height: 65,
                                    width: 221,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ari Pamungkas',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Product Manager',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.power_settings_new,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 17,
                          right: 17,
                          top: 171,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                              vertical: 9.0,
                            ),
                            child: Container(
                              height: 82,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 6,
                                      spreadRadius: -1,
                                      offset: Offset(0, 4),
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 9.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Today',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                            Text(
                                              '28 Mar 2024',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.blue[800],
                                                letterSpacing: -1,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 2,
                                      color: Colors.black,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Clock In',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    letterSpacing: 1,
                                                  ),
                                                ),
                                                Text(
                                                  '07.56',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.grey[800],
                                                    letterSpacing: -1,
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.exit_to_app,
                                                color: Colors.blue[800],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 194,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 6,
                          spreadRadius: -1,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 6.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Menu(
                                background: 'assets/images/Client Visit.png',
                                title: 'Client Visit',
                              ),
                              Menu(
                                background: 'assets/images/Time Off.png',
                                title: 'Time Off',
                              ),
                              Menu(
                                background: 'assets/images/Log Absent.png',
                                title: 'Log Absent',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Menu(
                                background: 'assets/images/Calendar.png',
                                title: 'Calendar',
                              ),
                              Menu(
                                background: 'assets/images/Activity.png',
                                title: 'Activity',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    width: 340,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 6,
                          spreadRadius: -1,
                          offset: Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 17.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Client Visit',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.blue[800],
                                ),
                              ),
                              Text(
                                '00:00:00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(28)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 16.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Visit In',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/images/Vector send plus.png',
                                        ),
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(left: 8.0),
                                    //   child: Icon(
                                    //     Icons.send,
                                    //     color: Colors.white,
                                    //     size: 20,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Activity Today',
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 14),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 14, color: Colors.blue[900]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19.0),
                    child: Container(
                      child: Column(
                        children: [
                          ActivityCard(
                              address: 'Ruko Woodlake, Tangerang',
                              initialName: 'J',
                              name: 'Jerome Polin',
                              time: '11.20 - 12.00'),
                          ActivityCard(
                              address: 'Ruko Victoria, Tangerang',
                              initialName: 'J',
                              name: 'Jerome  Polin',
                              time: '09.00 - 10.00'),
                          ActivityCard(
                              address: 'Harmoni',
                              initialName: 'J',
                              name: 'Jerome Polin',
                              time: '08.00 - 09.00'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 19.5),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 6,
                  spreadRadius: -1,
                  offset: Offset(0, -4),
                ),
              ]),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[900], boxShadow: [BoxShadow()]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Image(
                        image:
                            AssetImage('assets/images/arrow-left-square.png'),
                      ),
                      Text(
                        'Back to BTN Smart',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
