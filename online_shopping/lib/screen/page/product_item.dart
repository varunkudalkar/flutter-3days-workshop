import 'package:flutter/material.dart';
import 'package:online_shopping/model/product.dart';
import 'package:online_shopping/screen/detail/product_detail_page.dart';

import '../../constant.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key key,
    @required this.size,
    this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailScreen();
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: (size.width - 45) / 2,
            height: (size.width - 45) / 2,
            decoration: BoxDecoration(
              color: product.background,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              product.imageUrl,
            ),
          ),
          SizedBox(height: 12),
          Text(
            product.title,
            style: TextStyle(
              fontSize: 14,
              color: mScroudTextColor,
            ),
          ),
          Text(
            product.price,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
