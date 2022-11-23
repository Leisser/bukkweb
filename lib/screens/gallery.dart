import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ScreenF extends StatelessWidget {
  /// Constructs a [ScreenF] widget.
  const ScreenF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen F'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/details');
              },
              child: const Text('View F details'),
            ),
          ],
        ),
      ),
    );
  }
}
