import 'package:bukk/reusables/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import '../config/constants.dart';
import 'allScreens.dart';

/// The first screen in the bottom navigation bar.
class ScreenA extends StatefulWidget {
  /// Constructs a [ScreenA] widget.
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> with TickerProviderStateMixin {
  Duration? videoLength;
  Duration? videoPosition;
  double volume = 0.5;
  bool _showVolume = false;

  ScrollController _scrollController = ScrollController();
  AnimationController? controller1;
  Animation? sizeAnimation1;
  AnimationController? controller2;
  Animation? sizeAnimation2;
  AnimationController? controller3;
  Animation? sizeAnimation3;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - 80;
    var width = MediaQuery.of(context).size.width;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return !displayMobileLayout
        ? Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/truck.jpg'),
              fit: BoxFit.cover,
            )),
            child: GlassmorphicContainer(
              blur: .2,
              border: 0,
              width: width,
              height: height,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(.99),
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(.97),
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(.97),
                  ],
                  stops: const [
                    0,
                    0.3,
                    1,
                  ]),
              borderGradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(0.8),
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(0.8)
                  ],
                  stops: const [
                    0.06,
                    0.95,
                  ]),
              borderRadius: 0,
              child: SizedBox(
                height: height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * .17),
                        child: SizedBox(
                          height: height,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/mobile.png',
                                    height: height * .9,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * .05,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/logo.png',
                                    width: height * .22,
                                  ),
                                  SizedBox(
                                    height: height * .03,
                                  ),
                                  ReuseText(
                                    text: "Your Ride Partner",
                                    size: width * .013,
                                    fWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: height * .03,
                                  ),
                                  ReuseText(
                                    text: "Drop Your Cargo\nAnywhere",
                                    size: width * .027,
                                    fWeight: FontWeight.w700,
                                    color: Colors.white,
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: height * .03,
                                  ),
                                  Image.asset(
                                    'assets/images/store.png',
                                    width: width * .25,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const ContactUs(),
                    ],
                  ),
                ),
              ),
            ),
          )
        : Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/truck.jpg'),
              fit: BoxFit.cover,
            )),
            child: GlassmorphicContainer(
              blur: .2,
              border: 0,
              width: width,
              height: height,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(.99),
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(.97),
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(.97),
                  ],
                  stops: const [
                    0,
                    0.3,
                    1,
                  ]),
              borderGradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(0.8),
                    const Color.fromRGBO(4, 43, 82, 1).withOpacity(0.8)
                  ],
                  stops: const [
                    0.06,
                    0.95,
                  ]),
              borderRadius: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .05),
                child: SizedBox(
                  height: height,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/mobile.png',
                              height: height * .9,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * .05,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              width: height * .18,
                            ),
                            SizedBox(
                              height: height * .03,
                            ),
                            ReuseText(
                              text: "Your Ride Partner",
                              size: 14,
                              fWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: height * .03,
                            ),
                            ReuseText(
                              text: "Drop Your Cargo\nAnywhere",
                              size: 18,
                              fWeight: FontWeight.w700,
                              color: Colors.white,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: height * .03,
                            ),
                            Image.asset(
                              'assets/images/store.png',
                              width: width * .8,
                            ),
                          ],
                        ),
                        const ContactUs(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
