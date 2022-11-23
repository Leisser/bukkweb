import 'package:bukk/widgets/footerlinks.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brand_palettes/flutter_brand_palettes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../reusables/reusableText.dart';

/// The second screen in the bottom navigation bar.
class ContactUs extends StatelessWidget {
  /// Constructs a [ContactUs] widget.
  const ContactUs({Key? key}) : super(key: key);

  get2() async {
    const url = 'https://api.whatsapp.com/send?phone=27788175778';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url)); //forceWebView is true now
    } else {
      throw 'Could not launch $url';
    }
  }

  get1() async {
    const url = 'https://www.facebook.com/MJ-Accommodation-102030381693190/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url)); //forceWebView is true now
    } else {
      throw 'Could not launch $url';
    }
  }

  get3() async {
    const url =
        'https://www.instagram.com/explore/locations/102030381693190/mj-accommodation/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url)); //forceWebView is true now
    } else {
      throw 'Could not launch $url';
    }
  }

  get4() async {
    const url = '';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url)); //forceWebView is true now
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;

    return !displayMobileLayout
        ? Container(
            color: const Color.fromRGBO(4, 43, 82, 1).withOpacity(.99),
            width: width,
            padding: EdgeInsets.symmetric(horizontal: width * .1, vertical: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseText(
                      text: "Get in Touch",
                      size: width * .015,
                      fWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReuseText(
                      text:
                          "BUKK Technologies Pty Limited\nEastgate Office Park, South Boulevard Road,\nBruma,\nEastgate, JohannesburgGauteng, South Africa\n2198",
                      size: width * .01,
                      fWeight: FontWeight.w300,
                      color: Colors.white,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .01,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: "General enquiries",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .01,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: " - ",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .013,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            text: "+271 155 37045",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri launchUri = Uri(
                                  scheme: 'tel',
                                  path: '+27115537045',
                                );
                                if (await canLaunchUrl(launchUri)) {
                                  await launchUrl(launchUri);
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        'Make sure your signed in with chrome'),
                                    dismissDirection: DismissDirection.up,
                                  ));
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .01,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: "Email us",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .01,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: " - ",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .011,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            text: "bukk@getbukk.com",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri emailLaunchUri = Uri(
                                  scheme: 'mailto',
                                  path: 'bukk@getbukk.com',
                                  query: encodeQueryParameters(<String, String>{
                                    'subject': 'Send email to Bukk',
                                  }),
                                );

                                launchUrl(emailLaunchUri);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseText(
                      text: "Quick Links",
                      size: width * .015,
                      fWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EndpBarContents(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ReuseText(
                          text: "Connect with us",
                          size: width * .015,
                          fWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: () {
                                    get2();
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/whats.svg',
                                    height: 35,
                                    width: 35,
                                  )),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: () {
                                  get1();
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.facebookF,
                                  size: 35,
                                  color: const Facebook.blue().color,
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: () {
                                    get3();
                                  },
                                  child: SvgPicture.asset(
                                    "assets/images/insta.svg",
                                    height: 35,
                                    width: 35,
                                  )),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: () {
                                  get4();
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  size: 35,
                                  color: const Twitter.blue().color,
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () async {
                                  final Uri launchUri = Uri(
                                    scheme: 'tel',
                                    path: '+27115537045',
                                  );
                                  if (await canLaunchUrl(launchUri)) {
                                    await launchUrl(launchUri);
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                          'Make sure your signed in with chrome'),
                                      dismissDirection: DismissDirection.up,
                                    ));
                                  }
                                },
                                child: const FaIcon(FontAwesomeIcons.phone,
                                    size: 35, color: Colors.white),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: () async {
                                  final Uri emailLaunchUri = Uri(
                                    scheme: 'mailto',
                                    path: 'bukk@getbukk.com',
                                    query:
                                        encodeQueryParameters(<String, String>{
                                      'subject': 'Send email to Bukk',
                                    }),
                                  );

                                  launchUrl(emailLaunchUri);
                                },
                                child: const Icon(Icons.email,
                                    size: 35, color: Colors.white),
                              ),
                            ]),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            color: const Color.fromRGBO(4, 43, 82, 1).withOpacity(.99),
            width: width,
            padding: EdgeInsets.symmetric(horizontal: width * .1, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseText(
                      text: "Get in Touch",
                      size: 15,
                      fWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReuseText(
                      text:
                          "BUKK Technologies Pty Limited\nEastgate Office Park, South Boulevard Road,\nBruma,\nEastgate, JohannesburgGauteng, South Africa\n2198",
                      size: 12,
                      fWeight: FontWeight.w300,
                      color: Colors.white,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: "General enquiries",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: " - ",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            text: "+271 155 37045",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri launchUri = Uri(
                                  scheme: 'tel',
                                  path: '+27115537045',
                                );
                                if (await canLaunchUrl(launchUri)) {
                                  await launchUrl(launchUri);
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        'Make sure your signed in with chrome'),
                                    dismissDirection: DismissDirection.up,
                                  ));
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: "Email us",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            text: " - ",
                          ),
                          TextSpan(
                            style: GoogleFonts.baloo2(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            text: "bukk@getbukk.com",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri emailLaunchUri = Uri(
                                  scheme: 'mailto',
                                  path: 'bukk@getbukk.com',
                                  query: encodeQueryParameters(<String, String>{
                                    'subject': 'Send email to Bukk',
                                  }),
                                );

                                launchUrl(emailLaunchUri);
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseText(
                      text: "Quick Links",
                      size: 15,
                      fWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EndpBarContents(),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ReuseText(
                      text: "Connect with us",
                      size: 15,
                      fWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                get2();
                              },
                              child: SvgPicture.asset(
                                'assets/images/whats.svg',
                                height: 35,
                                width: 35,
                              )),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              get1();
                            },
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              size: 35,
                              color: const Facebook.blue().color,
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                get3();
                              },
                              child: SvgPicture.asset(
                                "assets/images/insta.svg",
                                height: 35,
                                width: 35,
                              )),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              get4();
                            },
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              size: 35,
                              color: const Twitter.blue().color,
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () async {
                              final Uri launchUri = Uri(
                                scheme: 'tel',
                                path: '+27115537045',
                              );
                              if (await canLaunchUrl(launchUri)) {
                                await launchUrl(launchUri);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                      'Make sure your signed in with chrome'),
                                  dismissDirection: DismissDirection.up,
                                ));
                              }
                            },
                            child: const FaIcon(FontAwesomeIcons.phone,
                                size: 35, color: Colors.white),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () async {
                              final Uri emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'bukk@getbukk.com',
                                query: encodeQueryParameters(<String, String>{
                                  'subject': 'Send email to Bukk',
                                }),
                              );

                              launchUrl(emailLaunchUri);
                            },
                            child: const Icon(Icons.email,
                                size: 35, color: Colors.white),
                          ),
                        ]),
                  ],
                )
              ],
            ),
          );
  }
}
