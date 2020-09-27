import 'package:flutter/material.dart';
import 'package:iceland_app/Screens/HomeScreen/components/menu_item.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.01),
      child: Row(
        children: [
          Image.asset("assets/images/menu.png"),
          SizedBox(width: size.width * 0.02),
          Text(
            "Visit Iceland",
            style: kAppBarTextStyle,
          ),
          Spacer(),
          MenuItem(size: size, title: "Locations"),
          MenuItem(size: size, title: "History"),
          MenuItem(size: size, title: "Scenes"),
        ],
      ),
    );
  }
}
