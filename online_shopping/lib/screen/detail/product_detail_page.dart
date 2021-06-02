import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shopping/constant.dart';
import 'package:online_shopping/screen/detail/detail_color.dart';
import 'package:online_shopping/screen/detail/detail_info.dart';
import 'package:online_shopping/screen/detail/detail_number.dart';
import 'package:online_shopping/screen/detail/detail_size.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      appBar: AppBar(
        backgroundColor: mPrimaryColor,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/back.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/images/cart.svg',
              width: 24,
              height: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aristocratic Hand Bag',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Office Code',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 240),
                  padding: EdgeInsets.fromLTRB(24, 90, 24, 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          DetailColor(),
                          SizedBox(width: 100),
                          DetailSize(),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. When an unknown printer took a galley.'),
                      SizedBox(height: 32),
                      Row(
                        children: [
                          DetailNumber(),
                        ],
                      )
                    ],
                  ),
                ),
                DetailInfo(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
