import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextAndButton extends StatelessWidget {
  const TextAndButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.3),
              Text(
                "Paradise on Earth",
                style: kBodyTextStyle,
              ),
              SizedBox(height: size.height * 0.04),
              Text(
                "Gulfoss, Iceland",
                style: kBodyTextStyle.copyWith(
                  fontSize: 39.0,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.12,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Visit",
                    style: kAppBarTextStyle.copyWith(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 1,
            child: Text(
              "Gulfoss, Ireland",
              style: kVerticalTitleTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
