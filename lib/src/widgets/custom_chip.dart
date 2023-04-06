import 'package:flutter/material.dart';

import '/src/constants/text_styles.dart';
import '/src/utils/screen.dart';

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
          fontSize: isSmallScreen(context) ? 10.0 : 11.0,
        ),
      ),
    );
  }
}
