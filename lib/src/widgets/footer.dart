import 'package:flutter/material.dart';

import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';
import '/src/widgets/responsive.dart';
import '/src/widgets/social_media_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[
      Text(
        Strings.rights_reserved,
        style: TextStyles.body1.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 8 : 10.0,
        ),
      ),
      if (ResponsiveWidget.isSmallScreen(context)) const SizedBox(height: 12.0),
      const SocialMediaButtons(),
      if (ResponsiveWidget.isSmallScreen(context)) const SizedBox(height: 12.0),
    ];

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children,
            ),
    );
  }
}
