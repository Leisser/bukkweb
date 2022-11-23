import 'package:bukk/reusables/reusablewhybukk.dart';
import 'package:bukk/screens/allScreens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../reusables/reusableText.dart';

/// The second screen in the bottom navigation bar.
class BukkReviews extends StatelessWidget {
  /// Constructs a [BukkReviews] widget.
  const BukkReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 80;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Container(
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: displayMobileLayout ? height * 1 : height * .7,
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ReuseText(
                    text: "What Makes BUKK Different?",
                    size: displayMobileLayout ? 18 : width * .02,
                    fWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: width * .4,
                    child: ReuseText(
                      text:
                          "There are various reasons why you should use the BUKK App.",
                      size: displayMobileLayout ? 15 : width * .01,
                      fWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  !displayMobileLayout
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ReuseWhyBukk(
                              svg: 'assets/images/access.svg',
                              text1: "Unlimited Access",
                            ),
                            SizedBox(
                              width: width * .025,
                            ),
                            const ReuseWhyBukk(
                              svg: 'assets/images/security.svg',
                              text1: "Security",
                            ),
                            SizedBox(
                              width: width * .025,
                            ),
                            const ReuseWhyBukk(
                              svg: 'assets/images/privacy.svg',
                              text1: "Privacy",
                            ),
                            SizedBox(
                              width: width * .025,
                            ),
                            const ReuseWhyBukk(
                              svg: 'assets/images/convenience.svg',
                              text1: "Convenience",
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                ReuseWhyBukk(
                                  svg: 'assets/images/privacy.svg',
                                  text1: "Privacy",
                                ),
                                ReuseWhyBukk(
                                  svg: 'assets/images/convenience.svg',
                                  text1: "Convenience",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                ReuseWhyBukk(
                                  svg: 'assets/images/privacy.svg',
                                  text1: "Privacy",
                                ),
                                ReuseWhyBukk(
                                  svg: 'assets/images/convenience.svg',
                                  text1: "Convenience",
                                ),
                              ],
                            )
                          ],
                        ),
                  displayMobileLayout
                      ? const SizedBox(
                          height: 40,
                        )
                      : SizedBox(),
                  !displayMobileLayout
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ReuseWhyBukk(
                              svg: 'assets/images/speed.svg',
                              text1: "Speed",
                            ),
                            SizedBox(
                              width: width * .025,
                            ),
                            const ReuseWhyBukk(
                              svg: 'assets/images/ease.svg',
                              text1: "Ease-to-use",
                            ),
                            SizedBox(
                              width: width * .025,
                            ),
                            const ReuseWhyBukk(
                              svg: 'assets/images/language.svg',
                              text1: "Multi-Language",
                            ),
                            SizedBox(
                              width: width * .025,
                            ),
                            const ReuseWhyBukk(
                              svg: 'assets/images/safepay.svg',
                              text1: "Secure Payments",
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                ReuseWhyBukk(
                                  svg: 'assets/images/speed.svg',
                                  text1: "Speed",
                                ),
                                ReuseWhyBukk(
                                  svg: 'assets/images/ease.svg',
                                  text1: "Ease-to-use",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                ReuseWhyBukk(
                                  svg: 'assets/images/language.svg',
                                  text1: "Multi-Language",
                                ),
                                ReuseWhyBukk(
                                  svg: 'assets/images/safepay.svg',
                                  text1: "Secure Payments",
                                ),
                              ],
                            )
                          ],
                        ),
                ],
              ),
            ),
            SizedBox(
              height: height * .1,
            ),
            !displayMobileLayout
                ? SizedBox(
                    height: height * .7,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * .3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReuseText(
                                text:
                                    "Stay connected with BUKK on social media",
                                size: width * .02,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/images/link.png')
                      ],
                    ),
                  )
                : SizedBox(
                    height: height * 1.05,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * .7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              ReuseText(
                                text:
                                    "Stay connected with BUKK on social media",
                                size: 17,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          'assets/images/link.png',
                          height: height * .9,
                        )
                      ],
                    ),
                  ),
            const ContactUs(),
          ],
        ),
      ),
    );
  }
}
