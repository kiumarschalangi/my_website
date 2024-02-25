import 'package:flutter/material.dart';

import '../constants/education_data.dart';
import '../constants/strings.dart' as strings;
import '../constants/text_styles.dart' as text_styles;
import '../models/education.dart';
import '../models/experience.dart';
import '../widgets/education_timeline.dart';
import '../widgets/experience_timeline.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
    super.key,
    required this.isEducation,
  });
  final bool isEducation;

  @override
  Widget build(BuildContext context) {
    final List<Widget> educationWidgets = educationList
        .map((Education education) => EducationTimeLine(
              education: education,
            ))
        .toList();
    final List<Widget> experienceWidgets = experienceList
        .map((Experience experience) => ExperienceTimeLine(
              education: experience,
            ))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          isEducation ? strings.education : strings.experience,
          style: text_styles.subHeading,
        ),
        Text(
          isEducation ? strings.educationSummary : strings.experienceSummary,
          style: text_styles.body,
        ),
        Column(children: isEducation ? educationWidgets : experienceWidgets)
      ],
    );
  }
}
