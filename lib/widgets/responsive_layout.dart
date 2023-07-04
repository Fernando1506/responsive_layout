import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileLayoutBuilder,
      required this.tabletDesktopLayout});

  final Widget Function(BuildContext) mobileLayoutBuilder;
  final Widget Function(BuildContext) tabletDesktopLayout;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 1280) {
              // Valor aproximado para 7,6 polegadas em pixels
              return tabletDesktopLayout(context);
            } else {
              return OrientationBuilder(
                builder: (context, orientation) {
                  if (MediaQuery.of(context).size.shortestSide < 800) {
                    return mobileLayoutBuilder(context);
                  } else {
                    return tabletDesktopLayout(context);
                  }
                },
              );
            }
          },
        ),
      ),
    );
  }
}
