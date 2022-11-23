import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EndpBarContents extends StatefulWidget {
  EndpBarContents();

  @override
  _EndpBarContentsState createState() => _EndpBarContentsState();
}

class _EndpBarContentsState extends State<EndpBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool _bookHover = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = MediaQuery.of(context).size.width;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onHover: (value) {
            setState(() {
              value ? _isHovering[0] = true : _isHovering[0] = false;
            });
          },
          onTap: () {
            GoRouter.of(context).go('/');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: GoogleFonts.baloo2(
                  textStyle: TextStyle(
                      letterSpacing: 1,
                      color: _isHovering[0] ? Colors.green : Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: displayMobileLayout ? 13 : width * .010),
                ),
              ),
              const SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: _isHovering[0],
                child: Container(height: 3, width: 50, color: Colors.green),
              )
            ],
          ),
        ),
        SizedBox(width: screenSize.width / 40),
        InkWell(
          onHover: (value) {
            setState(() {
              value ? _isHovering[1] = true : _isHovering[1] = false;
            });
          },
          onTap: () {
            GoRouter.of(context).go('/aboutbukk');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About BUKK',
                style: GoogleFonts.baloo2(
                  textStyle: TextStyle(
                    color: _isHovering[1] ? Colors.green : Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal,
                    fontSize: displayMobileLayout ? 13 : width * .010,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: _isHovering[1],
                child: Container(height: 3, width: 92, color: Colors.green),
              )
            ],
          ),
        ),
        SizedBox(width: screenSize.width / 40),
        InkWell(
          onHover: (value) {
            setState(() {
              value ? _isHovering[2] = true : _isHovering[2] = false;
            });
          },
          onTap: () {
            GoRouter.of(context).go('/bukkfeatures');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BUKK Features',
                style: GoogleFonts.baloo2(
                  textStyle: TextStyle(
                      letterSpacing: 1,
                      color: _isHovering[2] ? Colors.green : Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: displayMobileLayout ? 13 : width * .010),
                ),
              ),
              SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: _isHovering[2],
                child: Container(height: 3, width: 112, color: Colors.green),
              )
            ],
          ),
        ),
        SizedBox(width: screenSize.width / 40),
        InkWell(
          onHover: (value) {
            setState(() {
              value ? _isHovering[3] = true : _isHovering[3] = false;
            });
          },
          onTap: () {
            GoRouter.of(context).go('/reviews');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BUKK Reviews',
                style: GoogleFonts.baloo2(
                  textStyle: TextStyle(
                      letterSpacing: 1,
                      color: _isHovering[3] ? Colors.green : Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: displayMobileLayout ? 13 : width * .010),
                ),
              ),
              SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                visible: _isHovering[3],
                child: Container(height: 3, width: 110, color: Colors.green),
              )
            ],
          ),
        ),
      ],
    );
    //);
  }
}
