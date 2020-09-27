import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.white.withOpacity(0.35),
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: size.width * 0.04,
            color: kPrimaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/instagram.png"),
                Image.asset("assets/images/twitter.png"),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: size.width * 0.92,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                          vertical: size.height * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Facts",
                            style: kContentTextStyle.copyWith(
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Gullfoss is one of Iceland’s top attractions, with \nglacial waters that tumble down amid clouds of mist.",
                                style: kContentTextStyle,
                              ),
                              SizedBox(width: size.width * 0.10),
                              Text(
                                "Gullfoss, which translates to “golden falls,” indeed emits a golden color \non a sunny day, often creating rainbows.",
                                style: kContentTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                right: 50.0,
                child: Row(
                  children: [
                    Container(
                      height: 23.0,
                      width: 23.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF69A19C),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      height: 23.0,
                      width: 23.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF69A19C),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            height: 100.0,
            width: size.width * 0.04,
            color: kPrimaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/fb.png"),
                Image.asset("assets/images/pinterest.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
