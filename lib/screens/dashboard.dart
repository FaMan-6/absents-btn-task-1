import 'package:absents_btn/cubit/baseline/baseline_cubit.dart';
import 'package:absents_btn/cubit/user/user_cubit.dart';
import 'package:absents_btn/cubit/voa_realisasi/voa_realisasi_cubit.dart';
import 'package:absents_btn/theme/colors.dart';
import 'package:absents_btn/widget/dashboard_checkin.dart';
import 'package:absents_btn/widget/menu_dashboard.dart';
import 'package:absents_btn/widget/navbar_profile.dart';
import 'package:absents_btn/widget/voa_realisasi_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    if (!_isInitialized) {
      print('Dashboard initState');
      context.read<VoaRealisasiCubit>().fetchVoaRealisasi();
      print('fetchVoaRealisasi done');
      context.read<UserCubit>().fetchUser();
      print('fetchUser done');

      _isInitialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/navbar_dashboard.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 33.0, left: 21, right: 21),
                      child: BlocBuilder<UserCubit, UserState>(
                        builder: (context, state) {
                          if (state is UserLoaded) {
                            return NavbarProfile(
                              name: state.user[0].name,
                              job: state.user[0].job,
                            );
                          } else if (state is UserError) {
                            return Center(
                              child: Text(state.message),
                            );
                          } else if (state is UserLoading) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return Center(
                              child: Text('No data found'),
                            );
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MenuDashboard(
                            title: 'Activity',
                            image: 'assets/images/activity_dashboard.png',
                          ),
                          MenuDashboard(
                            title: 'Marketing Toolkit',
                            image: 'assets/images/marketing_tool_kit.png',
                          ),
                          MenuDashboard(
                            title: 'My Calendar',
                            image: 'assets/images/my_calendar.png',
                          ),
                          MenuDashboard(
                            title: 'Other Menu',
                            image: 'assets/images/other_menu.png',
                          ),
                        ],
                      ),
                    ),
                    DashboardCheckin(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: BlocBuilder<VoaRealisasiCubit, VoaRealisasiState>(
                builder: (context, state) {
                  print('VoaRealisasiState: $state');
                  if (state is VoaRealisasiLoaded) {
                    return VoaRealisasi(
                      nominal: state.voaRealisasi[0].nominal,
                      newIncome: state.voaRealisasi[0].newIncome,
                      oldIncome: state.voaRealisasi[0].oldIncome,
                      percent: state.voaRealisasi[0].percent,
                    );
                  } else if (state is VoaRealisasiError) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is VoaRealisasiLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Center(
                      child: Text('No data found'),
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13.0),
            ),
          ],
        ),
      ),
    );
  }
}
