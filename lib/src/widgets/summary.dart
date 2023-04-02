import 'package:flutter/material.dart';
import 'package:my_website/src/constants/strings.dart';
import 'package:my_website/src/constants/text_styles.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80.0),
      child: Text(
        Strings.summary,
        style: TextStyles.body,
      ),
    );
  }
}
