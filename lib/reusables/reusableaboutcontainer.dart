import 'package:bukk/reusables/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutContainer extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Color? color;
  final Icon? icon;

  const AboutContainer({
    Key? key,
    this.text1,
    this.text2,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widthh = MediaQuery.of(context).size.height * 1.5;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return !displayMobileLayout
        ? SizedBox(
            width: width * .25,
            height: width * .08,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: width * .03,
                  child: Container(
                    padding: EdgeInsets.only(left: width * .042, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: width * .25 - width * .03,
                    height: width * .08,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReuseText(
                          text: text1,
                          size: width * .015,
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ReuseText(
                          text: text2,
                          size: width * .01,
                          fWeight: FontWeight.w300,
                          color: Colors.grey,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: width * .03,
                    child: icon,
                    backgroundColor: color,
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            width: widthh * .25,
            height: widthh * .08,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: widthh * .03,
                  child: Container(
                    padding: EdgeInsets.only(left: widthh * .042, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: widthh * .25 - widthh * .03,
                    height: widthh * .08,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReuseText(
                          text: text1,
                          size: widthh * .015,
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ReuseText(
                          text: text2,
                          size: widthh * .01,
                          fWeight: FontWeight.w300,
                          color: Colors.grey,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: widthh * .03,
                    child: icon,
                    backgroundColor: color,
                  ),
                ),
              ],
            ),
          );
  }
}
