import 'package:flutter/material.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class appDoubleTextWidget extends StatelessWidget {
  const appDoubleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: styles.headLineStyle2,
        ),
        InkWell(
          child: Text(
            "View All",
            style: styles.textStyle.copyWith(color: styles.primaryColor),
          ),
          onTap: () {
            print("You are tapped");
          },
        )
      ],
    );
  }
}
