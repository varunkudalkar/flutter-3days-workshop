import 'package:flutter/material.dart';
import 'model/product.dart';

Color mPrimaryColor = Color(0xFF3D82AE);

Color mPrimaryTextColor = Colors.black;
Color mScroudTextColor = Colors.black45;

Color mSizeYellowColor = Color(0xFFF8C078);
Color mSizeGreyColor = Color(0xFFA29B9B);

Color mRedColor = Color(0xFFFF6464);

List<String> productTitles = [
  'Hand bag',
  'Jewellery',
  'Footwear',
  'Dresses',
  'Comestic'
];

List<Product> productList = [
  Product(
      'assets/images/package01.png', Color(0xFF3D82AE), 'Office Code', '\$234'),
  Product(
      'assets/images/package02.png', Color(0xFFD3A984), 'Belt Bag', '\$234'),
  Product(
      'assets/images/package03.png', Color(0xFF989493), 'Hang Top', '\$234'),
  Product(
      'assets/images/package04.png', Color(0xFFE6B398), 'Old Fashion', '\$234'),
  Product(
      'assets/images/package05.png', Color(0xFFFB7883), 'Carry bag', '\$234'),
  Product('assets/images/package06.png', Color(0xFFAEAEAE), 'Business Bag',
      '\$234'),
];
