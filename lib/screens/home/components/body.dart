// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant/screens/home/components/product_item.dart';

const PRODUCT_DATA = [
  {
    "image": "pizza.png",
    "name": "Pizza",
    "rest": "Maritine Star Restaurant",
    "rating": "4.5 (164)",
    "price": 20,
    "currency": "\$"
  },
  {
    "image": "burger.png",
    "name": "Burger",
    "rest": "Maritine Star Restaurant",
    "rating": "4.7 (199)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "fries.png",
    "name": "Fries",
    "rest": "Maritine Star Restaurant",
    "rating": "4.2 (101)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "hotdog.png",
    "name": "HotDog",
    "rest": "Maritine Star Restaurant",
    "rating": "3.9 (150)",
    "price": 15,
    "currency": "\$"
  },
];

const CATEGORIES = [
  {
    "image": "img_1.jpg",
    "name": "Toast",
  },
  {
    "image": "img_2.jpg",
    "name": "Eggs",
  },
  {
    "image": "img_3x.jpg",
    "name": "Pancakes",
  },
  {
    "image": "img_4.jpg",
    "name": "Cake",
  },
];

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: dead_code
    return ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding,
              ),
              height: size.height * 0.2 - 55,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Welcome back!',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headline5,
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Spacer(),
                  //Image.asset("assets/images/logo.png")
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kSearch.withOpacity(0.7),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/search.svg",
                      color: Color(0xFF404040),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Container(
            width: 400,
            height: 550,
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  bottom: 10.0,
                ),
                child: ListView(physics: BouncingScrollPhysics(), children: [
                  Positioned(
                      child: Container(
                          width: 400,
                          height: 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            children: CATEGORIES
                                .map((category) => Container(
                                    margin: const EdgeInsets.only(right: 20.0),
                                    width: 140,
                                    /*decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                  ),*/
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Wrap(children: [
                                          Image.asset(
                                              "assets/images/${category['image']}"),
                                        ]))))
                                .toList(),
                          ))),
                  SizedBox(height: 60),
                  Positioned(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Popular around you",
                              style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.headline5,
                                fontSize: 21,
                                color: Color(0xFF333333),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Positioned(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(bottom: 80),
                        child: Row(
                          children: PRODUCT_DATA
                              .map((data) => InkWell(
                                    onTap: () {},
                                    child: ProductItem(
                                      productData: data,
                                      width: 400 * 0.45,
                                    ),
                                  ))
                              .toList(),
                        )),
                  ),
                ]))),
      ),
    ]);
  }
}
