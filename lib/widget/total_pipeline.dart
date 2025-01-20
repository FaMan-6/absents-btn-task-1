import 'package:flutter/material.dart';

class TotalPipeline extends StatelessWidget {
  const TotalPipeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Pipeline',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Rp20.000.000.000',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent[700],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19.0),
              child: Row(
                spacing: 45,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/total-pipeline.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '• Berhasil',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.green[700],
                        ),
                      ),
                      Text('  Rp10.000.000.000'),
                      Text(
                        '• Outstanding',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow[700],
                        ),
                      ),
                      Text('  Rp5.000.000.000'),
                      Text(
                        '• Gagal',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.red[700],
                        ),
                      ),
                      Text('  5.000.000.000')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
