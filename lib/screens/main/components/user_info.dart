

import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
          color: Color(0xFF242430),
          child: Column(
            children: [
              Spacer(flex: 2),
              CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage("images/profile.png"),
              ),
              Spacer(),
              Text(
                "Akshay Charwekar",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "Software Engineer @Finastra \nEx-Persistent",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
              Spacer(flex: 2),
            ],
          )),
    );
  }
}
