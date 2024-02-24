import 'package:percent_indicator/percent_indicator.dart';

import 'package:flutter/material.dart';

import '../utilts/app_colors.dart';

class SkillsProgress extends StatelessWidget {
  final double progress;
  final String title;
  const SkillsProgress(
      {super.key, required this.progress, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(
              height: 2,
            ),
            LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: size.width * 0.8,
              lineHeight: size.height * 0.02,
              percent: progress,
              progressColor: AppColors.appPrimary,
              backgroundColor: AppColors.appPrimary.withOpacity(0.2),
              barRadius: const Radius.circular(50),
            )
          ],
        ));
  }
}
