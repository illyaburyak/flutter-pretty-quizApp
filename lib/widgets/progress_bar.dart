import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  final icons;
  final count;
  final total;

  ProgressBar({
    this.count,
    this.icons,
    this.total
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count -$total',
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ...icons,
        ],
      ),
    );
  }
}
