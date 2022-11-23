import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopBarContents extends StatefulWidget {
  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            children: [
              Text(
                'Home',
                style: TextStyle(
                    letterSpacing: 1,
                    color: _isHovering[0] ? Colors.green : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: width * .010),
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
            children: [
              Text(
                'About BUKK',
                style: TextStyle(
                  color: _isHovering[1] ? Colors.green : Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                  fontSize: width * .010,
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
            children: [
              Text(
                'BUKK Features',
                style: TextStyle(
                    letterSpacing: 1,
                    color: _isHovering[2] ? Colors.green : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: width * .010),
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
            children: [
              Text(
                'BUKK Reviews',
                style: TextStyle(
                    letterSpacing: 1,
                    color: _isHovering[3] ? Colors.green : Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: width * .010),
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
