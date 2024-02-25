import 'package:flutter/material.dart';
import 'package:my_website/src/utils/screen.dart';
import 'package:my_website/src/widgets/page_content.dart';
import 'package:my_website/src/widgets/project_carousel_card.dart';
import 'package:my_website/src/widgets/responsive.dart';
import 'package:my_website/src/widgets/social_media_icons.dart';

import '../constants/assets.dart' as assets;

import '../constants/strings.dart' as strings;
import '../constants/text_styles.dart' as text_styles;

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
            assets.programmer,
            height: ScreenUtil.getInstance().setWidth(345),
          ),
          const PageContent(),
          Text(strings.myProjects, style: text_styles.logo),
          const ProjectCrouselCard(
              title: 'Yabex Flight booking Application',
              description:
                  'Yabex is a Mobile application to search the cheapest flights',
              assetNames: [assets.yabex1, assets.yabex2]),
          const ProjectCrouselCard(
              title: 'Data Maat',
              description:
                  'A platform to monitor the habist of the audience of Tv programms',
              assetNames: [assets.tvc1, assets.tvc2, assets.tvc3]),
          const ProjectCrouselCard(
              title: 'Taal',
              description:
                  'First E-scooter sharing application in Iran with more that 20000 users',
              assetNames: [assets.taal1, assets.taal2]),
          const ProjectCrouselCard(
              title: 'Mahta kala',
              description:
                  'Cross-platform Mobile application an Website for an Online shop',
              assetNames: [
                assets.mahta1,
                assets.mahta2,
                assets.mahta3,
              ]),
          const ProjectCrouselCard(
              title: 'Canto',
              description:
                  'Cross-platform Mobile application and Desktop application for content creation',
              assetNames: [
                assets.canto1,
                assets.canto2,
              ]),
          const ProjectCrouselCard(
              title: 'Bagzee',
              description: 'Luggage pick up service app for the drivers ',
              assetNames: [
                assets.bagzee1,
                assets.bagzee2,
                assets.bagzee3,
              ]),
          Text(
            strings.rights_reserved,
            style: text_styles.body1.copyWith(
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
