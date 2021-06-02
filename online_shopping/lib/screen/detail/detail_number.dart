import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shopping/constant.dart';

class DetailNumber extends StatefulWidget {
  const DetailNumber({
    Key key,
  }) : super(key: key);

  @override
  _DetailNumberState createState() => _DetailNumberState();
}

class _DetailNumberState extends State<DetailNumber> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {
            if (number > 1) {
              setState(() {
                number--;
              });
            }
          },
          child: Container(
            width: 40,
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: mPrimaryColor,
                width: 0.5,
              ),
            ),
            child: SvgPicture.asset(
              'assets/images/minus.svg',
              color: mPrimaryColor,
            ),
          ),
        ),
        Container(
          width: 40,
          height: 30,
          alignment: Alignment.center,
          child: Text('$number'),
        ),
        InkWell(
          onTap: () {
            if (number < 99) {
              setState(() {
                number++;
              });
            }
          },
          child: Container(
            width: 40,
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: mPrimaryColor,
                width: 0.5,
              ),
            ),
            child: SvgPicture.asset(
              'assets/images/plus.svg',
              color: mPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
