import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  final Orientation orientation;
  final Widget content;

  const MobileLayout({required this.orientation, required this.content});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(10), child: content),
    );
  }
}
