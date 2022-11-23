import 'package:flutter/material.dart';

import '../reusables/reusableText.dart';
import '../reusables/reusableaboutcontainer.dart';
import 'allScreens.dart';

/// The third screen in the bottom navigation bar.
class ScreenC extends StatelessWidget {
  /// Constructs a [ScreenB] widget.
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 80;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return SizedBox(
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReuseText(
              text: "What's BUKK?",
              size: !displayMobileLayout ? width * .02 : 18,
              fWeight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(
              width: displayMobileLayout ? width * .7 : width * .4,
              child: ReuseText(
                text:
                    "BUKK is the app that helps you securely move your cargo from anywhere to anywhere, with your ownn choice of vehicle body type.",
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
                      AboutContainer(
                        color: Colors.orange.withOpacity(.3),
                        text1: "Registration",
                        text2:
                            "Free, quick & secure registration for passengers and drivers.",
                        icon: Icon(
                          Icons.group_add,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      AboutContainer(
                        color: Colors.yellow.withOpacity(.3),
                        text1: "Pick-up location",
                        text2: "Simply locate your cargo",
                        icon: Icon(
                          Icons.add_task_outlined,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutContainer(
                        color: Colors.orange.withOpacity(.3),
                        text1: "Registration",
                        text2:
                            "Free, quick & secure registration for passengers and drivers.",
                        icon: Icon(
                          Icons.group_add,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AboutContainer(
                        color: Colors.yellow.withOpacity(.3),
                        text1: "Pick-up location",
                        text2: "Simply locate your cargo",
                        icon: Icon(
                          Icons.add_task_outlined,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
            const SizedBox(
              height: 20,
            ),
            !displayMobileLayout
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutContainer(
                        color: Colors.blue.withOpacity(.3),
                        text1: "Drop Location",
                        text2:
                            "Simply locate the destination point of your cargo",
                        icon: Icon(
                          Icons.gps_fixed_outlined,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      AboutContainer(
                        color: Colors.pinkAccent.withOpacity(.3),
                        text1: "Vehicle Body Type",
                        text2:
                            "Select a vehicle type you prefer to pick-up & securely drop your cargo",
                        icon: Icon(
                          Icons.touch_app,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutContainer(
                        color: Colors.blue.withOpacity(.3),
                        text1: "Drop Location",
                        text2:
                            "Simply locate the destination point of your cargo",
                        icon: Icon(
                          Icons.gps_fixed_outlined,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AboutContainer(
                        color: Colors.pinkAccent.withOpacity(.3),
                        text1: "Vehicle Body Type",
                        text2:
                            "Select a vehicle type you prefer to pick-up & securely drop your cargo",
                        icon: Icon(
                          Icons.touch_app,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
            const SizedBox(
              height: 20,
            ),
            !displayMobileLayout
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutContainer(
                        color: Colors.greenAccent.withOpacity(.3),
                        text1: "Digital Payment",
                        text2: "Securely pay the charges",
                        icon: Icon(
                          Icons.attach_money_sharp,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      AboutContainer(
                        color: Colors.cyanAccent.withOpacity(.3),
                        text1: "100% Delivery",
                        text2: "Track your cargo",
                        icon: Icon(
                          Icons.swap_calls,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutContainer(
                        color: Colors.greenAccent.withOpacity(.3),
                        text1: "Digital Payment",
                        text2: "Securely pay the charges",
                        icon: Icon(
                          Icons.attach_money_sharp,
                          size: displayMobileLayout ? 25 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AboutContainer(
                        color: Colors.cyanAccent.withOpacity(.3),
                        text1: "100% Delivery",
                        text2: "Track your cargo",
                        icon: Icon(
                          Icons.swap_calls,
                          size: displayMobileLayout ? 35 : width * .04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
            const SizedBox(
              height: 100,
            ),
            const ContactUs(),
          ],
        ),
      ),
    );
  }
}
