import 'package:flutter/material.dart';

import '/src/widgets/page_content.dart';

class MediumScreenLayout extends StatelessWidget {
  const MediumScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget>[
                PageContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
