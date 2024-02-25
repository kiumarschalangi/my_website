import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/social_media_icon_button.dart';

import '../constants/assets.dart' as assets;

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialMediaIconButton(
          imagePath: assets.linkedin,
          name: 'Linkedin',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
        SizedBox(width: 16.0),
        SocialMediaIconButton(
          imagePath: assets.evernote,
          name: 'evernote',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
        SizedBox(width: 16.0),
        SocialMediaIconButton(
          imagePath: assets.google,
          name: 'google',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
        SizedBox(width: 16.0),
        SocialMediaIconButton(
          imagePath: assets.twitter,
          name: 'twitter',
          url: 'https://www.linkedin.com/in/kiumars-chaharlangi/',
        ),
      ],
    );
  }
}
