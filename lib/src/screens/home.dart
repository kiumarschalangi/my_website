import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/large_screen_layout.dart';
import 'package:my_website/src/widgets/medium_screen_layout.dart';
import 'package:my_website/src/widgets/small_screen_layout.dart';

import '../utils/screen.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: const CustomAppBar(),
      drawer:
          ResponsiveWidget.isSmallScreen(context) ? const CustomDrawer() : null,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil.getInstance().setWidth(108),
        ),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: const ResponsiveWidget(
                largeScreen: LargeScreenLayout(),
                mediumScreen: MediumScreenLayout(),
                smallScreen: SmallScreenLayout(),
              ),
            ),
          );
        }),
      ),
    );
  }
}
