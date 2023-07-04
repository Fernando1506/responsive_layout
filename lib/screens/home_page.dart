import 'package:flutter/material.dart';

import '../widgets/mobile_layout.dart';
import '../widgets/responsive_layout.dart';
import '../widgets/tablet_desktop_layout.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(),
      body: ResponsiveLayout(
        mobileLayoutBuilder: (context) => MobileLayout(
          orientation: orientation,
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width,
                    height: height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width,
                    height: height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width,
                    height: height * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ),
        tabletDesktopLayout: (context) => TabletDesktopLayout(
          orientation: orientation,
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * 0.3,
                      height: height * 0.55,
                      color: Colors.grey[700],
                    ),
                    Container(
                      width: width * 0.5,
                      height: height * 0.55,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
