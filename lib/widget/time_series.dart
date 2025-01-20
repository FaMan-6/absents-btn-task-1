import 'package:flutter/material.dart';

class TimeSeries extends StatelessWidget {
  const TimeSeries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Time Series'),
          ),
          Image.asset(
            'assets/images/graph-plot.png',
            height: 320,
            width: 358,
          ),
        ],
      ),
    );
  }
}
