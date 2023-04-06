import 'package:flutter/material.dart';

import '/src/constants/skills.dart';
import '/src/constants/strings.dart';
import '/src/widgets/custom_chip.dart';
import '/src/widgets/section_title.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionTitle(partOne: Strings.my, partTwo: Strings.skills),
        const SizedBox(height: 16.0),
        Wrap(
          children: skills.map((String skill) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: CustomChip(label: skill),
            );
          }).toList(),
        ),
      ],
    );
  }
}
