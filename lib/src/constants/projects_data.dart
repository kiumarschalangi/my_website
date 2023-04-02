import 'package:my_website/src/constants/assets.dart';
import 'package:my_website/src/models/project.dart';

final List<Project> projects = <Project>[
  Project(
      title: 'Yabex Flight booking Application',
      description:
          'Yabex is a Mobile application to search the cheapest flights',
      assetNames: [Assets.yabex1, Assets.yabex2]),
  Project(
      title: 'Data Maat',
      description:
          'A platform to monitor the habist of the audience of Tv programms',
      assetNames: [Assets.tvc1, Assets.tvc2, Assets.tvc3]),
  Project(
      title: 'Taal',
      description:
          'First E-scooter sharing application in Iran with more that 20000 users',
      assetNames: [Assets.taal1, Assets.taal2]),
  Project(
      title: 'Mahta kala',
      description:
          'Cross-platform Mobile application an Website for an Online shop',
      assetNames: [
        Assets.mahta1,
        Assets.mahta2,
        Assets.mahta3,
      ]),
  Project(
    title: 'Canto',
    description:
        'Cross-platform Mobile application and Desktop application for content creation',
    assetNames: [
      Assets.canto1,
      Assets.canto2,
    ],
  ),
  Project(
    title: 'Bagzee',
    description: 'Luggage pick up service app for the drivers ',
    assetNames: [
      Assets.bagzee1,
      Assets.bagzee2,
      Assets.bagzee3,
    ],
  ),
];
