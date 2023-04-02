import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/resume_section.dart';
import 'package:my_website/src/widgets/skills_section.dart';

class ResumeAndSkillsSection extends StatelessWidget {
  const ResumeAndSkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Expanded(
          child: ResumeSection(),
        ),
        SizedBox(width: 40.0),
        Expanded(child: SkillsSection()),
      ],
    );
  }
}
