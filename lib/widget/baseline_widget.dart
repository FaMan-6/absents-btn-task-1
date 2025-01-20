import 'package:absents_btn/helpers/currency_format.dart';
import 'package:absents_btn/helpers/percent.dart';
import 'package:absents_btn/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BaselineWidget extends StatefulWidget {
  final int nominal;
  final int growthTarget;
  final int growthRealisasi;
  final int posisiTarget;
  final int posisiRealisasi;
  const BaselineWidget({
    super.key,
    required this.nominal,
    required this.growthTarget,
    required this.growthRealisasi,
    required this.posisiTarget,
    required this.posisiRealisasi,
  });

  @override
  State<BaselineWidget> createState() => _BaselineWidgetState();
}

class _BaselineWidgetState extends State<BaselineWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(percentFormatter(widget.growthRealisasi, widget.growthTarget));
  }

  @override
  Widget build(BuildContext context) {
    final nominal = formater(widget.nominal);
    final growthTarget = formater(widget.growthTarget);
    final growthRealisasi = formater(widget.growthRealisasi);
    final posisiTarget = formater(widget.posisiTarget);
    final posisiRealisasi = formater(widget.posisiRealisasi);

    final growthPercent =
        percentFormatter(widget.growthRealisasi, widget.growthTarget);
    final posisiPercent =
        percentFormatter(widget.posisiRealisasi, widget.posisiTarget);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      'Baseline',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      nominal,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Image.asset('assets/images/graphic.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Column(
              spacing: 12,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 7,
                          children: [
                            Text(
                              'Growth Realisasi',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              growthRealisasi,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          spacing: 7,
                          children: [
                            Text(
                              'Growth Target',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              growthTarget,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: 15,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            lineHeight: 8.0,
                            percent: growthPercent,
                            progressColor: Colors.green[800],
                            backgroundColor: Colors.grey[300],
                            barRadius: Radius.circular(16),
                          ),
                        ),
                        Text('${(growthPercent * 100).toStringAsFixed(0)}%'),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 7,
                          children: [
                            Text(
                              'Posisi Realisasi',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              posisiRealisasi,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          spacing: 7,
                          children: [
                            Text(
                              'Posisi Target',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              posisiTarget,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: 15,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: LinearPercentIndicator(
                            lineHeight: 8.0,
                            percent: posisiPercent,
                            progressColor: Colors.yellow[800],
                            backgroundColor: Colors.grey[300],
                            barRadius: Radius.circular(16),
                          ),
                        ),
                        Text('${(posisiPercent * 100).toStringAsFixed(0)}%'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
