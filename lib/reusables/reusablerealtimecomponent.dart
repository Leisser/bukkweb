import 'package:bukk/reusables/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RealTime extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Icon? icon;
  final Color? color;

  const RealTime({
    Key? key,
    this.text1,
    this.text2,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widthh = MediaQuery.of(context).size.height * 1.5;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return !displayMobileLayout
        ? Column(
            children: [
              Container(
                height: width * .08,
                width: width * .08,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.white,
                        color!,
                      ],
                      stops: const [
                        0,
                        0.7,
                        1,
                      ]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: width * .08 - 3,
                  width: width * .08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: icon,
                ),
              ),
              ReuseText(
                text: text1,
                size: width * .01,
                fWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ReuseText(
                text: text2,
                size: width * .01,
                fWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ],
          )
        : Column(
            children: [
              Container(
                height: widthh * .08,
                width: widthh * .08,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.white,
                        color!,
                      ],
                      stops: const [
                        0,
                        0.7,
                        1,
                      ]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: widthh * .08 - 3,
                  width: widthh * .08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: icon,
                ),
              ),
              ReuseText(
                text: text1,
                size: widthh * .01,
                fWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ReuseText(
                text: text2,
                size: widthh * .01,
                fWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ],
          );
  }
}
