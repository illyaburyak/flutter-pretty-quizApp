import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({
    this.total,
    this.count,
    this.onClearState,
  });

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget icon;

    if (0 <= count && count <= 3) {
      msg = 'Cool!';
      icon = Icon(
        Icons.favorite,
        color: Colors.red,
      );
    } else if (4 <= count && count < -7) {
      msg = 'Great';
      icon = Icon(
        Icons.grade,
        color: Colors.red,
      );
    } else {
      msg = 'ok bro';
      icon = Icon(
        Icons.offline_pin_rounded,
        color: Colors.red,
      );
    }

    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              5.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: FittedBox(
              fit: BoxFit.contain,
              child: icon,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            'Cool you answered on $count from $total',
          ),
          Divider(
            color: Colors.white,
          ),
          FlatButton(
            child: Text(
              'Take Quiz again',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}
