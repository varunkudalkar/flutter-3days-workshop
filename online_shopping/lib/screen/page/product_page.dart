import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shopping/screen/page/page_title_list.dart';
import 'package:online_shopping/screen/page/product_item.dart';

import '../../constant.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/back.svg',
            width: 24,
            height: 24,
            color: mPrimaryTextColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              width: 24,
              height: 24,
              color: mPrimaryTextColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/images/cart.svg',
              width: 24,
              height: 24,
              color: mPrimaryTextColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Women',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          PageTitleList(),
          SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return ProductItem(
                      size: size,
                      product: productList[index],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
