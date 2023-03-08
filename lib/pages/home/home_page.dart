import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneakerstore/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _header(),
        _categories(),
        _productsTitle()
      ],
    );
  }

  _header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halo, Alexander Pato',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  '@alexakey',
                  style: subtitleTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/img_pp.png'))),
          )
        ],
      ),
    );
  }

  _categories(){
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                'All Shoes',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleTextColor
                ),
                color: Colors.transparent,
              ),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: subtitleTextColor
                ),
                color: Colors.transparent,
              ),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: subtitleTextColor
                ),
                color: Colors.transparent,
              ),
              child: Text(
                'Basketball',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: subtitleTextColor
                ),
                color: Colors.transparent,
              ),
              child: Text(
                'Hiking',
                style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _productsTitle(){
    return Container(
      margin: EdgeInsets.only(top: defaultMargin, right: defaultMargin, left: defaultMargin),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold
        ),
      ),
    );
  }
}
