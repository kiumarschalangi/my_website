import 'package:flutter/material.dart';
import 'package:my_website/src/constants/strings.dart' as strings;
import 'package:my_website/src/widgets/responsive.dart';

import '../constants/fonts.dart' as fonts;
import '../constants/text_styles.dart' as text_styles;

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
            text: strings.about,
            style: text_styles.heading.copyWith(
              fontFamily: fonts.nexa_light,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
          TextSpan(
            text: strings.me,
            style: text_styles.heading.copyWith(
              color: const Color(0xFF50AFC0),
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
