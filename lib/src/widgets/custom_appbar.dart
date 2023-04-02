import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_website/src/widgets/responsive.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Color(0xFF50AFC0)),
      titleSpacing: 0.0,
      title: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Kiumars',
              style: TextStyles.logo,
            ),
            TextSpan(
              text: ' Chaharlangi',
              style: TextStyles.logo.copyWith(
                color: const Color(0xFF50AFC0),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: !ResponsiveWidget.isSmallScreen(context)
          ? <Widget>[
              MaterialButton(
                child: Text(
                  Strings.menu_home,
                  style: TextStyles.menuItem.copyWith(
                    color: const Color(0xFF50AFC0),
                  ),
                ),
                onPressed: () {},
              ),
              MaterialButton(
                  child: Text(
                    Strings.menu_about,
                    style: TextStyles.menuItem,
                  ),
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          content: const Text('sssssss'),
                          actions: <Widget>[
                            CupertinoDialogAction(
                                child: const Text('ss'),
                                onPressed: () {
                                  Navigator.pop(context);
                                })
                          ],
                        );
                      },
                    );
                  }),
              MaterialButton(
                child: Text(
                  Strings.menu_contact,
                  style: TextStyles.menuItem,
                ),
                onPressed: () {},
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
