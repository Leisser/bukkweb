import 'package:bukk/reusables/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReuseWhyBukk extends StatelessWidget {
  final String? text1;
  final String? svg;

  const ReuseWhyBukk({
    Key? key,
    this.text1,
    this.svg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widthh = MediaQuery.of(context).size.height * 1.5;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return !displayMobileLayout
        ? Container(
            width: width * .08,
            height: width * .08,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  '$svg',
                  height: width * .04,
                  width: width * .04,
                ),
                ReuseText(
                  text: text1,
                  size: width * .01,
                  fWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        : Container(
            width: widthh * .08,
            height: widthh * .08,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  '$svg',
                  height: widthh * .04,
                  width: widthh * .04,
                ),
                ReuseText(
                  text: text1,
                  size: widthh * .01,
                  fWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ],
            ),
          );
  }
}
