import 'package:flutter/material.dart';

import '/src/constants/colors.dart';
import '/src/constants/fonts.dart';
import '/src/constants/text_styles.dart';
import '/src/utils/screen.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.partOne,
    required this.partTwo,
  });

  final String partOne;
  final String partTwo;
  @override
  Widget build(BuildContext context) {
    final bool isSmall = isSmallScreen(context);
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: partOne,
            style: TextStyles.heading.copyWith(
              fontFamily: Fonts.nexa_light,
              fontSize: isSmall ? 36 : 45.0,
            ),
          ),
          TextSpan(
            text: partTwo,
            style: TextStyles.heading.copyWith(
              color: AppColors.primary,
              fontSize: isSmall ? 36 : 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
