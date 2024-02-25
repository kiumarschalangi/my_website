import 'package:flutter/material.dart';
import 'package:my_website/src/constants/strings.dart' as strings;
import 'package:my_website/src/constants/text_styles.dart' as text_styles;

class SummarySection extends StatelessWidget {
  const SummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80.0),
      child: Text(
        strings.summary,
        style: text_styles.body,
      ),
    );
  }
}
