import 'package:flutter/material.dart';

import '/src/constants/projects_data.dart';
import '/src/constants/strings.dart';
import '/src/models/project.dart';
import '/src/widgets/project_carousel_card.dart';
import '/src/widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SectionTitle(partOne: Strings.my, partTwo: Strings.projects),
        const SizedBox(height: 16.0),
        ...projects.map((Project project) {
          return ProjectCrouselCard(
            title: project.title,
            description: project.description,
            assetNames: project.assetNames,
          );
        }).toList(),
      ],
    );
  }
}
