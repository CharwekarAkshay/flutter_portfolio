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
                  Divider(),
                  SizedBox(height: defaultPadding),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DONWLOAD CV",
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
