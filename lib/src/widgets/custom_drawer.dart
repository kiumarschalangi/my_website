import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/src/constants/strings.dart' as strings;
import '../constants/text_styles.dart' as text_styles;

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          MaterialButton(
            child: Text(
              strings.menu_home,
              style: text_styles.menuItem.copyWith(
                color: const Color(0xFF50AFC0),
              ),
            ),
            onPressed: () {},
          ),
          MaterialButton(
              child: Text(
                strings.menu_about,
                style: text_styles.menuItem,
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
              strings.menu_contact,
              style: text_styles.menuItem,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
