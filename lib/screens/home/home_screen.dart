import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu2.svg',
          height: 30,
          width: 30,
          // ignore: prefer_const_constructors
          color: Color(0xFF333333),
        ),
        onPressed: () {},
      ),
    );
  }
}
