import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/responsive.dart';

import '../constants/text_styles.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyles.chip.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 11.0,
        ),
      ),
    );
  }
}
