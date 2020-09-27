import 'package:flutter/material.dart';

import '../../../constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    @required this.size,
    this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      child: FlatButton(
        onPressed: () {
          print(title);
        },
        child: Text(
          title,
          style: kAppBarTextStyle.copyWith(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
