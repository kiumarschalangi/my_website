import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/responsive.dart';
import 'package:my_website/src/widgets/social_media_icons.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Strings.rights_reserved,
                    style: TextStyles.body1.copyWith(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 8 : 10.0,
                    ),
                  )),
              const Align(
                alignment: Alignment.centerRight,
                child: SocialMediaButtons(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
