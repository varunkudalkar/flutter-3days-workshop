import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 52),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'price',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                '\$234',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset('assets/images/package01_big.png')
        ],
      ),
    );
  }
}
