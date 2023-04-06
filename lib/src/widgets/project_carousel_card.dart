import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '/src/constants/text_styles.dart';
import '/src/utils/screen.dart';

class ProjectCrouselCard extends StatelessWidget {
  const ProjectCrouselCard({
    super.key,
    required this.title,
    required this.description,
    required this.assetNames,
  });

  final String title;
  final String description;
  final List<String> assetNames;

  @override
  Widget build(BuildContext context) {
    final bool isSmall = isSmallScreen(context);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: isSmall
            ? SizedBox(
                height: 300,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyles.subHeading,
                      ),
                      subtitle: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyles.body,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: CarouselSlider.builder(
                        itemCount: assetNames.length,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                          int realIndex,
                        ) {
                          return Container(
                            color: Colors.grey,
                            child: Image.asset(
                              assetNames[index],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.6,
                          aspectRatio: 30 / 26,
                          // viewportFraction: 1,
                          autoPlayCurve: Curves.easeIn,
                          clipBehavior: Clip.antiAlias,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyles.subHeading,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        description,
                        style: TextStyles.body,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 300,
                    child: CarouselSlider.builder(
                      itemCount: assetNames.length,
                      itemBuilder: (
                        BuildContext context,
                        int index,
                        int realIndex,
                      ) {
                        return Container(
                          color: Colors.grey,
                          child: Image.asset(
                            assetNames[index],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.6,
                        aspectRatio: 30 / 26,
                        // viewportFraction: 1,
                        autoPlayCurve: Curves.easeIn,
                        clipBehavior: Clip.antiAlias,
                      ),
                    ),
                  )
                ],
              ));
  }
}
