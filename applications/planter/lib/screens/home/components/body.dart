import 'package:flutter/material.dart';
import 'package:planter/contants/style.dart';

import 'package:planter/screens/home/components/featurred_plants.dart';
import 'package:planter/screens/home/components/header_with_seachbox.dart';
import 'package:planter/screens/home/components/recomend_plants.dart';
import 'package:planter/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchbox(size: size),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: K_DEFAULT_PADDING * 2),
        ],
      ),
    );
  }
}
