import 'package:flutter/material.dart';

import '/src/constants/education_data.dart';
import '/src/constants/strings.dart';
import '/src/models/experience.dart';
import '/src/widgets/experience_timeline.dart';
import '/src/widgets/section_title.dart';

class WorkExperiencesSection extends StatelessWidget {
  const WorkExperiencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitle(
          partOne: Strings.my,
          partTwo: Strings.workExperiences,
        ),
        const SizedBox(height: 16.0),
        ...experienceList
            .map((Experience experience) => ExperienceTimeLine(
                  education: experience,
                ))
            .toList()
      ],
    );
  }
}
