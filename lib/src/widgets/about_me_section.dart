import 'package:flutter/material.dart';

import '/src/constants/assets.dart';
import '/src/constants/colors.dart';
import '/src/constants/fonts.dart';
import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';
import '/src/utils/screen.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = isSmallScreen(context);
    final Widget about = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
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
                  fontSize: isSmall ? 36 : 45.0,
                ),
              ),
              TextSpan(
                text: Strings.me,
                style: TextStyles.heading.copyWith(
                  color: AppColors.primary,
                  fontSize: isSmall ? 36 : 45.0,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          Strings.summary,
          style: TextStyles.body,
        )
      ],
    );

    final Image image = Image.asset(
      Assets.programmer,
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.height * 0.25,
    );

    return isSmall
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              image,
              const SizedBox(width: 16.0),
              about,
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(child: about),
              const SizedBox(width: 16.0),
              image,
            ],
          );
  }
}
