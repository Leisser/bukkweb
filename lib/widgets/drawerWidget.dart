import 'package:bukk/reusables/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '+27788175778',
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      // showSnackBar('Make sure your using a phone');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            color: const Color.fromRGBO(4, 43, 82, 1).withOpacity(.99),
            padding: const EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height - 17,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 75,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ReuseText(
                      text: 'BUKK Technologies Pty Limited',
                      color: Colors.white,
                      size: 12,
                      fWeight: FontWeight.normal,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ReuseText(
                      text: 'Eastgate Office Park, South Boulevard Road, Bruma',
                      color: Colors.white,
                      size: 12,
                      fWeight: FontWeight.normal,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ReuseText(
                      text: 'Gauteng, South Africa',
                      color: Colors.white,
                      size: 12,
                      fWeight: FontWeight.normal,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade300,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).go('/');
                      Scaffold.of(context).closeDrawer();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ReuseText(
                          text: 'HOME',
                          color: Colors.white,
                          size: 16,
                          fWeight: FontWeight.bold,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey.shade300,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade300,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).go('/aboutbukk');
                      Scaffold.of(context).closeDrawer();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ReuseText(
                          text: 'About BUKK',
                          color: Colors.white,
                          size: 16,
                          fWeight: FontWeight.bold,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey.shade300,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade300,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).go('/bukkfeatures');
                      Scaffold.of(context).closeDrawer();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ReuseText(
                          text: 'BUKK Features',
                          color: Colors.white,
                          size: 16,
                          fWeight: FontWeight.bold,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey.shade300,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade300,
                      thickness: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).go('/reviews');
                      Scaffold.of(context).closeDrawer();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ReuseText(
                          text: 'BUKK Reviews',
                          color: Colors.white,
                          size: 16,
                          fWeight: FontWeight.bold,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey.shade300,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Divider(
                      color: Colors.blueGrey.shade300,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Copyright © 2022 | BUKK',
                style: TextStyle(
                  color: const Color.fromRGBO(4, 43, 82, 1).withOpacity(.99),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
