import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'package:sample_programming/screens/utilities/App_Layout.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final bool? isColor;
  final String secondText;
  final CrossAxisAlignment alignment;
  const AppColumnLayout(
      {super.key,
      this.isColor,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: styles.headLineStyle4,
        )
      ],
    );
  }
}
