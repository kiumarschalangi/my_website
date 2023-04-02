import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/src/constants/strings.dart';
import '../constants/text_styles.dart';

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
        ],
      ),
    );
  }
}
