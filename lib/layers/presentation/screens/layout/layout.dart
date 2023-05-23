import 'package:flutter/material.dart';
import 'package:touchline/core/utils/helper.dart';

import '../splash_screen/splash_screen.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        Helper.maxHeight = constraints.maxHeight;
        Helper.maxWidth = constraints.maxWidth;
        return const SplashScreen();
      },
    );
  }
}
