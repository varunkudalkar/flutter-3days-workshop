import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constant.dart';

class PageTitleList extends StatefulWidget {
  @override
  _PageTitleListState createState() => _PageTitleListState();
}

class _PageTitleListState extends State<PageTitleList> {
  var currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productTitles.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  currentSelect = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                alignment: Alignment.center,
                child: Text(
                  productTitles[index],
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: currentSelect == index
                          ? mPrimaryTextColor
                          : mScroudTextColor),
                ),
              ),
            );
          }),
    );
  }
}
