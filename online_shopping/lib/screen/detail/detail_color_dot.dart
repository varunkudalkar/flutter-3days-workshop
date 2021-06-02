import 'package:flutter/material.dart';

class DetailColorDot extends StatelessWidget {
  const DetailColorDot({
    Key key,
    this.color,
    this.check = false,
  }) : super(key: key);

  final Color color;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border:
            Border.all(color: check ? color : Colors.transparent, width: 0.5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
