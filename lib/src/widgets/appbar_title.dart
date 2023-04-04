import 'package:flutter/material.dart';

import '/src/constants/colors.dart';
import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(text: Strings.firstName, style: TextStyles.logo),
          TextSpan(
            text: Strings.lastNameWithSpace,
            style: TextStyles.logo.copyWith(color: AppColors.blue),
          ),
        ],
      ),
    );
  }
}
