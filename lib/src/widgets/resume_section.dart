import 'package:flutter/material.dart';

import 'education_section.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        EducationSection(
          isEducation: false,
        ),
        SizedBox(height: 8.0),
        Divider(),
        EducationSection(
          isEducation: true,
        )
      ],
    );
  }
}
