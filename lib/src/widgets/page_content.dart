import 'package:flutter/material.dart';

import '/src/utils/screen.dart';
import '/src/widgets/about_me_section.dart';
import '/src/widgets/resume_and_skills_section.dart';
import '/src/widgets/resume_section.dart';
import '/src/widgets/skills_section.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSmall = isSmallScreen(context);
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: isSmall ? 24.0 : 0.0),
          const AboutMeSection(),
          SizedBox(height: isSmall ? 24.0 : 48.0),
          if (isSmall)
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                ResumeSection(),
                SizedBox(height: 24.0),
                SkillsSection()
              ],
            )
          else
            const ResumeAndSkillsSection()
        ],
      ),
    );
  }
}
