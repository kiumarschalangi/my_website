import 'package:flutter/material.dart';

import '../constants/text_styles.dart' as text_styles;
import '../models/education.dart';

class EducationTimeLine extends StatelessWidget {
  const EducationTimeLine({
    super.key,
    required this.education,
  });
  final Education education;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            education.organization,
            style: text_styles.company,
          ),
          Text(
            education.post,
            style: text_styles.body.copyWith(
              color: const Color(0xFF45405B),
            ),
          ),
          Text(
            '${education.from}-${education.to}',
            style: text_styles.body,
          ),
        ],
      ),
    );
  }
}
