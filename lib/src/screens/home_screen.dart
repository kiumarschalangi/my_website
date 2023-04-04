import 'package:flutter/material.dart';

import '/src/widgets/about_me_section.dart';
import '/src/widgets/appbar_title.dart';
import '/src/widgets/footer.dart';
// import '/src/widgets/projects_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppBarTitle()),
      body: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(32.0),
            child: AboutMeSection(),
          ),
          SizedBox(height: 32.0),
          // Padding(
          //   padding: EdgeInsets.all(32.0),
          //   child: ProjectsSection(),
          // ),
        ],
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
