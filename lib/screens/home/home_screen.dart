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
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 21.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/menu2.svg",
                height: 30,
                width: 30,
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(
                top: 15,
              ),
            ),
          ),
        ]);
  }
}
