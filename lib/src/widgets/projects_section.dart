import 'package:flutter/material.dart';

import '/src/constants/projects_data.dart';
import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';
import '/src/models/project.dart';
import '/src/widgets/project_carousel_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(Strings.myProjects, style: TextStyles.heading),
        const SizedBox(height: 10),
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
