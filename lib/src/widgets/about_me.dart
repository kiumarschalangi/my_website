import 'package:flutter/material.dart';
import 'package:my_website/src/constants/strings.dart';
import 'package:my_website/src/widgets/responsive.dart';

import '../constants/fonts.dart';
import '../constants/text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: Strings.about,
            style: TextStyles.heading.copyWith(
              fontFamily: Fonts.nexa_light,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
          TextSpan(
            text: Strings.me,
            style: TextStyles.heading.copyWith(
              color: const Color(0xFF50AFC0),
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
