// // Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brand_palettes/flutter_brand_palettes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'config/base.dart';
import 'config/constants.dart';
import 'config/firebaseconfig.dart';
import 'config/responsive.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screens/allScreens.dart';
import 'widgets/drawerWidget.dart';
import 'widgets/top_bar_contents.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// This scenario demonstrates how to set up nested navigation using ShellRoute,
// which is a pattern where an additional Navigator is placed in the widget tree
// to be used instead of the root navigator. This allows deep-links to display
// pages along with other UI components such as a BottomNavigationBar.
//
// This example demonstrates how to display a route within a ShellRoute and also
// push a screen using a different navigator (such as the root Navigator) by
// providing a `parentNavigatorKey`.

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ShellRouteExampleApp());
}

/// An example demonstrating how to use [ShellRoute]
class ShellRouteExampleApp extends StatelessWidget {
  /// Creates a [ShellRouteExampleApp]
  ShellRouteExampleApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      /// Application shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return MyHomePage(child: child);
        },
        routes: <RouteBase>[
          /// The first screen to display in the bottom navigation bar.
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const ScreenA();
            },
            routes: <RouteBase>[
              // The details screen to display stacked on the inner Navigator.
              // This will cover screen A but not the application shell.
              GoRoute(
                path: 'details',
                builder: (BuildContext context, GoRouterState state) {
                  return const DetailsScreen(label: 'A');
                },
              ),
            ],
          ),

          /// Displayed when the second item in the the bottom navigation bar is
          /// selected.
          // GoRoute(
          //   path: '/rooms',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const ScreenB();
          //   },
          //   routes: <RouteBase>[
          //     /// Same as "/a/details", but displayed on the root Navigator by
          //     /// specifying [parentNavigatorKey]. This will cover both screen B
          //     /// and the application shell.
          //     GoRoute(
          //       path: 'details',
          //       builder: (BuildContext context, GoRouterState state) {
          //         return const DetailsScreen(label: 'B');
          //       },
          //     ),
          //   ],
          // ),
          GoRoute(
            path: '/aboutbukk',
            builder: (BuildContext context, GoRouterState state) {
              return const ScreenC();
            },
            routes: <RouteBase>[
              /// Same as "/a/details", but displayed on the root Navigator by
              /// specifying [parentNavigatorKey]. This will cover both screen B
              /// and the application shell.
              GoRoute(
                path: 'details',
                builder: (BuildContext context, GoRouterState state) {
                  return const DetailsScreen(label: 'C');
                },
              ),
            ],
          ),
          GoRoute(
            path: '/bukkfeatures',
            builder: (BuildContext context, GoRouterState state) {
              return const BukkFeatures();
            },
            routes: <RouteBase>[
              /// Same as "/a/details", but displayed on the root Navigator by
              /// specifying [parentNavigatorKey]. This will cover both screen B
              /// and the application shell.
              GoRoute(
                path: 'details',
                parentNavigatorKey: _rootNavigatorKey,
                builder: (BuildContext context, GoRouterState state) {
                  return const DetailsScreen(label: 'D');
                },
              ),
            ],
          ),
          GoRoute(
            path: '/reviews',
            builder: (BuildContext context, GoRouterState state) {
              return const BukkReviews();
            },
            routes: <RouteBase>[
              /// Same as "/a/details", but displayed on the root Navigator by
              /// specifying [parentNavigatorKey]. This will cover both screen B
              /// and the application shell.
              GoRoute(
                path: 'details',
                parentNavigatorKey: _rootNavigatorKey,
                builder: (BuildContext context, GoRouterState state) {
                  return const DetailsScreen(label: 'E');
                },
              ),
            ],
          ),
          // GoRoute(
          //   path: '/gallery',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const ScreenF();
          //   },
          //   routes: <RouteBase>[
          //     /// Same as "/a/details", but displayed on the root Navigator by
          //     /// specifying [parentNavigatorKey]. This will cover both screen B
          //     /// and the application shell.
          //     GoRoute(
          //       path: 'details',
          //       parentNavigatorKey: _rootNavigatorKey,
          //       builder: (BuildContext context, GoRouterState state) {
          //         return const DetailsScreen(label: 'F');
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bukk',
      theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all(Colors.grey[500]),
            trackColor: MaterialStateProperty.all(Colors.grey[100]),
          ),
          highlightColor: Colors.green,
          primarySwatch: Colors.green,
          textTheme: GoogleFonts.arvoTextTheme()),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.child,
    Key? key,
  }) : super(key: key);

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget child;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  static int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location == '/') {
      return 0;
    }
    if (location == '/rooms') {
      return 1;
    }
    if (location == '/amenities') {
      return 2;
    }
    if (location == '/about') {
      return 3;
    }
    if (location == '/contact') {
      return 4;
    }
    if (location == '/gallery') {
      return 5;
    }
    return 0;
  }
}

class _MyHomePageState extends Base<MyHomePage> {
  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '+27788175778',
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      showSnackBar('Make sure your using a phone');
    }
  }

  bool changeheight = true;

  @override
  void initState() {
    super.initState();
    seebar.addListener(() {
      setState(() {
        changeheight = seebar.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: widget.child,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: displayMobileLayout
            ? 40
            : changeheight
                ? 80
                : 50,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white, size: 40),
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .15),
          child: InkWell(
            onTap: () {
              //
            },
            child: Image.asset('assets/images/logow.png',
                height: displayMobileLayout
                    ? 20
                    : changeheight
                        ? 40
                        : 20,
                fit: BoxFit.fitHeight),
          ),
        ),
        actions: [
          displayMobileLayout
              ? Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .15),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _makePhoneCall();
                        },
                        icon: const Icon(
                          Icons.call,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: EdgeInsets.only(
                      bottom: 10,
                      right: MediaQuery.of(context).size.width * .15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: screenSize.width / 30,
                          top: 10,
                        ),
                        child: TopBarContents(),
                      ),
                    ],
                  ),
                ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
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
          ),
        ),
      ),
      drawer: displayMobileLayout ? const MenuDrawer() : null,
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'A Screen',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'B Screen',
      //     ),
      //   ],
      //   currentIndex: ScaffoldWithNavBar._calculateSelectedIndex(context),
      //   onTap: (int idx) => _onItemTapped(idx, context),
      // ),
    );
  }

  // void _onItemTapped(int index, BuildContext context) {
  //   switch (index) {
  //     case 0:
  //       GoRouter.of(context).go('/');
  //       break;
  //     case 1:
  //       GoRouter.of(context).go('/b');
  //       break;
  //   }
  // }
}

/// The details screen for either the A or B screen.
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen].
  const DetailsScreen({
    required this.label,
    Key? key,
  }) : super(key: key);

  /// The label to display in the center of the screen.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Details for $label',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
