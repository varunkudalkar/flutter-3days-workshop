import 'package:flutter/material.dart';

class DetailSize extends StatelessWidget {
  const DetailSize({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Size'),
        SizedBox(height: 6,),
        Text(
          '12cm',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
