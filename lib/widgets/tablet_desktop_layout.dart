import 'package:flutter/material.dart';

double calculateFontSize(double containerHeight) {
  const double baseFontSize = 25.0; // Tamanho base da fonte
  const double scaleFactor =
      0.02; // Fator de escala para ajustar o tamanho da fonte

  return baseFontSize - containerHeight * scaleFactor;
}

class TabletDesktopLayout extends StatelessWidget {
  final Orientation orientation;
  final Widget content;

  const TabletDesktopLayout({required this.orientation, required this.content});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Center(
      child: content,
    );
  }
}
