import 'package:flutter/material.dart';

import '/src/constants/skills.dart';
import '/src/constants/strings.dart';
import '/src/constants/text_styles.dart';
import '/src/widgets/custom_chip.dart';

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
        const Divider()
      ],
    );
  }
}
