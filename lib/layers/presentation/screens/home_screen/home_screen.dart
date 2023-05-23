import 'package:flutter/material.dart';
import 'package:touchline/core/utils/components.dart';
import 'package:touchline/core/utils/helper.dart';

class HomeScreen extends StatelessWidget {
  final double homeLogoHeight = Helper.maxHeight * 0.15;

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              toolbarHeight: homeLogoHeight,
              flexibleSpace: Components.appLogo(
                height: homeLogoHeight,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  Text("TEST"),
                  // Components.appLogo(height: homeLogoHeight),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
