import 'package:flutter/material.dart';
import 'package:profile/components/animated_linear_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Flutter",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Angular",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "React",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "AWS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "Vue",
        ),
      ],
    );
  }
}
