import 'package:flutter/material.dart';
import 'package:my_website/src/constants/projects_data.dart';
import 'package:my_website/src/constants/strings.dart' as strings;
import 'package:my_website/src/utils/screen.dart';
import 'package:my_website/src/widgets/page_content.dart';
import 'package:my_website/src/widgets/project_carousel_card.dart';

import '../constants/text_styles.dart' as text_styles;
import 'package:my_website/src/constants/assets.dart' as assets;
import 'custom_footer.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                const PageContent(),
                Image.asset(
                  assets.programmer,
                  height: ScreenUtil.getInstance().setWidth(345),
                )
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 80,
          ),
          Text(strings.myProjects, style: text_styles.heading),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 1000,
            child: ListView.builder(
              itemCount: projects.length,
              itemExtent: 300,
              itemBuilder: (BuildContext context, int index) {
                return ProjectCrouselCard(
                    title: projects[index].title,
                    description: projects[index].description,
                    assetNames: projects[index].assetNames);
              },
            ),
          ),
          // const ProjectCrouselCard(
          //     title: 'Yabex Flight booking Application',
          //     description:
          //         'Yabex is a Mobile application to search the cheapest flights',
          //     assetNames: [assets.yabex1, assets.yabex2]),
          // const ProjectCrouselCard(
          //     title: 'Data Maat',
          //     description:
          //         'A platform to monitor the habist of the audience of Tv programms',
          //     assetNames: [assets.tvc1, assets.tvc2, assets.tvc3]),
          // const ProjectCrouselCard(
          //     title: 'Taal',
          //     description:
          //         'First E-scooter sharing application in Iran with more that 20000 users',
          //     assetNames: [assets.taal1, assets.taal2]),
          // const ProjectCrouselCard(
          //     title: 'Mahta kala',
          //     description:
          //         'Cross-platform Mobile application an Website for an Online shop',
          //     assetNames: [
          //       assets.mahta1,
          //       assets.mahta2,
          //       assets.mahta3,
          //     ]),
          // const ProjectCrouselCard(
          //     title: 'Canto',
          //     description:
          //         'Cross-platform Mobile application and Desktop application for content creation',
          //     assetNames: [
          //       assets.canto1,
          //       assets.canto2,
          //     ]),
          const CustomFooter()
        ],
      ),
    );
  }
}
