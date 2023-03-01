import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../screens/utilities/App_Layout.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidth(10)),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0XFFBFC2DF),
          ),
          Gap(
            AppLayout.getWidth(10),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
