import 'package:my_website/src/constants/assets.dart' as assets;
import 'package:my_website/src/models/project.dart';

final List<Project> projects = <Project>[
  Project(
      title: 'Yabex Flight booking Application',
      description:
          'Yabex is a Mobile application to search the cheapest flights',
      assetNames: [assets.yabex1, assets.yabex2]),
  Project(
      title: 'Data Maat',
      description:
          'A platform to monitor the habist of the audience of Tv programms',
      assetNames: [assets.tvc1, assets.tvc2, assets.tvc3]),
  Project(
      title: 'Taal',
      description:
          'First E-scooter sharing application in Iran with more that 20000 users',
      assetNames: [assets.taal1, assets.taal2]),
  Project(
      title: 'Mahta kala',
      description:
          'Cross-platform Mobile application an Website for an Online shop',
      assetNames: [
        assets.mahta1,
        assets.mahta2,
        assets.mahta3,
      ]),
  Project(
    title: 'Canto',
    description:
        'Cross-platform Mobile application and Desktop application for content creation',
    assetNames: [
      assets.canto1,
      assets.canto2,
    ],
  ),
  Project(
    title: 'Bagzee',
    description: 'Luggage pick up service app for the drivers ',
    assetNames: [
      assets.bagzee1,
      assets.bagzee2,
      assets.bagzee3,
    ],
  ),
];
