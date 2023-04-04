import 'package:flutter/material.dart';

import '/src/constants/assets.dart';
import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';
import '/src/utils/screen.dart';
import '/src/widgets/section_title.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = isSmallScreen(context);
    final Widget about = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitle(partOne: Strings.about, partTwo: Strings.me),
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
