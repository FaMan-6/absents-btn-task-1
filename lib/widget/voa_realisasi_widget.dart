import 'package:absents_btn/helpers/currency_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';

class VoaRealisasi extends StatefulWidget {
  final int nominal;
  final int newIncome;
  final int oldIncome;
  final int percent;
  const VoaRealisasi({
    super.key,
    required this.nominal,
    required this.newIncome,
    required this.oldIncome,
    required this.percent,
  });

  @override
  State<VoaRealisasi> createState() => _VoaRealisasiState();
}

class _VoaRealisasiState extends State<VoaRealisasi> {
  @override
  Widget build(BuildContext context) {
    final nominal = formater(widget.nominal);
    final newIncome = formater(widget.newIncome);
    final oldIncome = formater(widget.oldIncome);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Column(
          spacing: 14,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VoA Realisasi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nominal,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2.0),
                        child: Row(
                          spacing: 6,
                          children: [
                            Image.asset(
                              'assets/images/graph-up-arrow.png',
                              width: 12,
                              height: 12,
                            ),
                            Text(
                              newIncome,
                              style: TextStyle(
                                color: Colors.green[900],
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        spacing: 6,
                        children: [
                          SvgPicture.asset(
                            'assets/images/trending-up.svg',
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            '${widget.percent}%',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'vs September 2024, $oldIncome',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
