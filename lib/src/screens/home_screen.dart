import 'package:flutter/material.dart';

import '/src/constants/colors.dart';
import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';
import '/src/screens/home_screen_large.dart';
import '/src/widgets/footer.dart';
import '/src/widgets/medium_screen_layout.dart';
import '/src/widgets/responsive.dart';
import '/src/widgets/small_screen_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: Strings.firstName, style: TextStyles.logo),
              TextSpan(
                text: Strings.lastNameWithSpace,
                style: TextStyles.logo.copyWith(color: AppColors.blue),
              ),
            ],
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const SingleChildScrollView(
            child: ResponsiveWidget(
              largeScreen: HomeScreenLarge(),
              mediumScreen: MediumScreenLayout(),
              smallScreen: SmallScreenLayout(),
            ),
          );
        },
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
