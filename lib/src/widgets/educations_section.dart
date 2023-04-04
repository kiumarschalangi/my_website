import 'package:flutter/material.dart';

import '/src/constants/education_data.dart';
import '/src/constants/strings.dart';
import '/src/models/education.dart';
import '/src/widgets/education_timeline.dart';
import '/src/widgets/section_title.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitle(
          partOne: Strings.my,
          partTwo: Strings.educations,
        ),
        const SizedBox(height: 16.0),
        ...educationList.map((Education education) {
          return EducationTimeLine(education: education);
        }).toList(),
      ],
    );
  }
}
