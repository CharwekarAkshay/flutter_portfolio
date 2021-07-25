import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile/constants.dart';
import 'package:profile/screens/main/components/user_info.dart';

import 'coding.dart';
import 'knowledges.dart';
import 'location_information.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  LocationInformation(
                    title: "Nationality",
                    text: "Indian",
                  ),
                  LocationInformation(
                    title: "State",
                    text: "Madhya Pradesh",
                  ),
                  LocationInformation(
                    title: "City",
                    text: "Jabalpur",
                  ),
                  LocationInformation(
                    title: "Age",
                    text: "24",
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  SizedBox(height: defaultPadding),
                  Knowledges(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
