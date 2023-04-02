import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/about_me.dart';
import 'package:my_website/src/widgets/resume_and_skills_section.dart';
import 'package:my_website/src/widgets/summary.dart';

import '../widgets/responsive.dart';
import '../widgets/resume_section.dart';
import '../widgets/skills_section.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 24.0 : 0.0),
          const AboutMe(),
          const SizedBox(height: 4.0),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 12.0 : 24.0),
          const SummarySection(),
          SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 24.0 : 48.0),
          if (ResponsiveWidget.isSmallScreen(context))
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
