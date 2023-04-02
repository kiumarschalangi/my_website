import 'package:flutter/material.dart';

import '../constants/education_data.dart';
import '../constants/strings.dart';
import '../constants/text_styles.dart';
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
          isEducation ? Strings.education : Strings.experience,
          style: TextStyles.subHeading,
        ),
        Text(
          isEducation ? Strings.educationSummary : Strings.experienceSummary,
          style: TextStyles.body,
        ),
        Column(children: isEducation ? educationWidgets : experienceWidgets)
      ],
    );
  }
}
