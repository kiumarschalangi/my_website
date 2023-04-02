import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/page_content.dart';

import 'custom_footer.dart';

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
          const CustomFooter()
        ],
      ),
    );
  }
}
