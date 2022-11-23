import 'package:bukk/reusables/reusablerealtimecomponent.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:go_router/go_router.dart';

import '../reusables/reusableText.dart';
import 'allScreens.dart';

/// The second screen in the bottom navigation bar.
class BukkFeatures extends StatelessWidget {
  /// Constructs a [BukkFeatures] widget.
  const BukkFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 80;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return SizedBox(
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: !displayMobileLayout
            ? Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * .5,
                    width: width,
                    color: const Color.fromRGBO(4, 43, 82, 1).withOpacity(0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReuseText(
                          text: "Real-time Account Creation",
                          size: width * .02,
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: width * .4,
                          child: ReuseText(
                            text:
                                "Simply create a passenger or driver account and start moving cargo.",
                            size: width * .01,
                            fWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RealTime(
                              icon: Icon(
                                Icons.group_add_outlined,
                                size: width * .04,
                                color: Colors.amberAccent,
                              ),
                              text1: "Passenger",
                              text2: "Create a passenger account.",
                              color: Colors.amberAccent,
                            ),
                            SizedBox(
                              width: width * .05,
                            ),
                            RealTime(
                              icon: Icon(
                                Icons.person_outline,
                                size: width * .04,
                                color: Colors.indigoAccent,
                              ),
                              text1: "Driver",
                              text2: "Create a driver account.",
                              color: Colors.indigoAccent,
                            ),
                            SizedBox(
                              width: width * .05,
                            ),
                            RealTime(
                              icon: Icon(
                                Icons.verified_user_outlined,
                                size: width * .04,
                                color: Colors.tealAccent,
                              ),
                              text1: "Verification",
                              text2: "Verify your identity.",
                              color: Colors.tealAccent,
                            ),
                            SizedBox(
                              width: width * .05,
                            ),
                            RealTime(
                              icon: Icon(
                                Icons.connect_without_contact_outlined,
                                size: width * .04,
                                color: Colors.cyanAccent,
                              ),
                              text1: "Connect",
                              text2: "Move cargo!",
                              color: Colors.cyanAccent,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .9,
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
                                text: "Pick up and drop your cargo anywhere.",
                                size: width * .02,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                textAlign: TextAlign.left,
                              ),
                              ReuseText(
                                text:
                                    "BUKK helps you pick up and drop your cargo securely from its current location to its destination",
                                size: width * .01,
                                fWeight: FontWeight.w400,
                                color: Colors.grey,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/images/realtime1.png')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .9,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/realtime2.png',
                          filterQuality: FilterQuality.high,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: width * .3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReuseText(
                                text: "Choose a vehicle you prefer",
                                size: width * .02,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                textAlign: TextAlign.left,
                              ),
                              ReuseText(
                                text:
                                    "There are a variety of vehicle body types you can choose from to move your cargo securely.",
                                size: width * .01,
                                fWeight: FontWeight.w400,
                                color: Colors.grey,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/payment.jpg'),
                            fit: BoxFit.cover)),
                    height: height * .9,
                    width: width,
                    child: GlassmorphicContainer(
                      blur: .2,
                      border: 0,
                      width: width,
                      height: height * .9,
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
                                  text: "Secure payment methods.",
                                  size: width * .02,
                                  fWeight: FontWeight.bold,
                                  color: Colors.white,
                                  textAlign: TextAlign.left,
                                ),
                                ReuseText(
                                  text:
                                      "Pay your driver through various credit card platforms or by cash on delivery",
                                  size: width * .01,
                                  fWeight: FontWeight.w400,
                                  color: Colors.white,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Image.asset('assets/images/realtime3.png')
                        ],
                      ),
                    ),
                  ),
                  const ContactUs(),
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * .7,
                    width: width,
                    color: const Color.fromRGBO(4, 43, 82, 1).withOpacity(0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ReuseText(
                          text: "Real-time Account Creation",
                          size: 18,
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: width * .7,
                          child: const ReuseText(
                            text:
                                "Simply create a passenger or driver account and start moving cargo.",
                            size: 15,
                            fWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RealTime(
                                  icon: Icon(
                                    Icons.group_add_outlined,
                                    size:
                                        displayMobileLayout ? 35 : width * .04,
                                    color: Colors.amberAccent,
                                  ),
                                  text1: "Passenger",
                                  text2: "Create a passenger account.",
                                  color: Colors.amberAccent,
                                ),
                                RealTime(
                                  icon: Icon(
                                    Icons.person_outline,
                                    size:
                                        displayMobileLayout ? 35 : width * .04,
                                    color: Colors.indigoAccent,
                                  ),
                                  text1: "Driver",
                                  text2: "Create a driver account.",
                                  color: Colors.indigoAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RealTime(
                                  icon: Icon(
                                    Icons.verified_user_outlined,
                                    size:
                                        displayMobileLayout ? 35 : width * .04,
                                    color: Colors.tealAccent,
                                  ),
                                  text1: "Verification",
                                  text2: "Verify your identity.",
                                  color: Colors.tealAccent,
                                ),
                                RealTime(
                                  icon: Icon(
                                    Icons.connect_without_contact_outlined,
                                    size:
                                        displayMobileLayout ? 35 : width * .04,
                                    color: Colors.cyanAccent,
                                  ),
                                  text1: "Connect",
                                  text2: "Move cargo!",
                                  color: Colors.cyanAccent,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 1.2,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * .8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              ReuseText(
                                text: "Pick up and drop your cargo anywhere.",
                                size: 18,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                              ReuseText(
                                text:
                                    "BUKK helps you pick up and drop your cargo securely from its current location to its destination",
                                size: 15,
                                fWeight: FontWeight.w400,
                                color: Colors.grey,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          'assets/images/realtime1.png',
                          height: height,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 1.2,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * .8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReuseText(
                                text: "Choose a vehicle you prefer",
                                size: 18,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                              ReuseText(
                                text:
                                    "There are a variety of vehicle body types you can choose from to move your cargo securely.",
                                size: 15,
                                fWeight: FontWeight.w400,
                                color: Colors.grey,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          'assets/images/realtime2.png',
                          height: height,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/payment.jpg'),
                            fit: BoxFit.cover)),
                    height: height * 1.2,
                    width: width,
                    child: GlassmorphicContainer(
                      blur: .2,
                      border: 0,
                      width: width,
                      height: height * 1.2,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width * .8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                ReuseText(
                                  text: "Secure payment methods.",
                                  size: 18,
                                  fWeight: FontWeight.bold,
                                  color: Colors.white,
                                  textAlign: TextAlign.center,
                                ),
                                ReuseText(
                                  text:
                                      "Pay your driver through various credit card platforms or by cash on delivery",
                                  size: 15,
                                  fWeight: FontWeight.w400,
                                  color: Colors.white,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            'assets/images/realtime3.png',
                            height: height,
                          )
                        ],
                      ),
                    ),
                  ),
                  const ContactUs(),
                ],
              ),
      ),
    );
  }
}
