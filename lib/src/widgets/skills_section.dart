import 'package:flutter/material.dart';

import '../constants/skills.dart';
import '../constants/strings.dart';
import '../constants/text_styles.dart';
import 'custom_chip.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = skills
        .map((String skill) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: CustomChip(label: skill),
            ))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          Strings.skills_i_have,
          style: TextStyles.subHeading,
        ),
        Wrap(children: widgets),
        Divider()
      ],
    );
  }
}
