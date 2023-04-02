import 'package:flutter/material.dart';
import 'package:my_website/src/utils/screen.dart';
import 'package:my_website/src/widgets/page_content.dart';
import 'package:my_website/src/widgets/project_carousel_card.dart';
import 'package:my_website/src/widgets/responsive.dart';
import 'package:my_website/src/widgets/social_media_icons.dart';

import '../constants/assets.dart';
import '../constants/strings.dart';
import '../constants/text_styles.dart';

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            Assets.programmer,
            height: ScreenUtil.getInstance().setWidth(345),
          ),
          const PageContent(),
          Text(Strings.myProjects, style: TextStyles.logo),
          const ProjectCrouselCard(
              title: 'Yabex Flight booking Application',
              description:
                  'Yabex is a Mobile application to search the cheapest flights',
              assetNames: [Assets.yabex1, Assets.yabex2]),
          const ProjectCrouselCard(
              title: 'Data Maat',
              description:
                  'A platform to monitor the habist of the audience of Tv programms',
              assetNames: [Assets.tvc1, Assets.tvc2, Assets.tvc3]),
          const ProjectCrouselCard(
              title: 'Taal',
              description:
                  'First E-scooter sharing application in Iran with more that 20000 users',
              assetNames: [Assets.taal1, Assets.taal2]),
          const ProjectCrouselCard(
              title: 'Mahta kala',
              description:
                  'Cross-platform Mobile application an Website for an Online shop',
              assetNames: [
                Assets.mahta1,
                Assets.mahta2,
                Assets.mahta3,
              ]),
          const ProjectCrouselCard(
              title: 'Canto',
              description:
                  'Cross-platform Mobile application and Desktop application for content creation',
              assetNames: [
                Assets.canto1,
                Assets.canto2,
              ]),
          const ProjectCrouselCard(
              title: 'Bagzee',
              description: 'Luggage pick up service app for the drivers ',
              assetNames: [
                Assets.bagzee1,
                Assets.bagzee2,
                Assets.bagzee3,
              ]),
          Text(
            Strings.rights_reserved,
            style: TextStyles.body1.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 8 : 10.0,
            ),
          ),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
          const SocialMediaButtons(),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
        ],
      ),
    );
  }
}
