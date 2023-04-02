import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/social_media_icon_button.dart';

import '../constants/assets.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        SocialMediaIconButton(
          imagePath: Assets.linkedin,
          name: 'Linkedin',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
        SizedBox(width: 16.0),
        SocialMediaIconButton(
          imagePath: Assets.evernote,
          name: 'evernote',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
        SizedBox(width: 16.0),
        SocialMediaIconButton(
          imagePath: Assets.google,
          name: 'google',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
        SizedBox(width: 16.0),
        SocialMediaIconButton(
          imagePath: Assets.twitter,
          name: 'twitter',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
      ],
    );
  }
}
