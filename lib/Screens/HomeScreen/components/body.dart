import 'package:flutter/material.dart';
import 'package:iceland_app/Screens/HomeScreen/components/bottom_container.dart';
import 'package:iceland_app/Screens/HomeScreen/components/custom_app_bar.dart';
import 'package:iceland_app/Screens/HomeScreen/components/text_and_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgimage.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(size: size),
          TextAndButton(size: size),
          Spacer(),
          BottomContainer(size: size),
        ],
      ),
    );
  }
}
