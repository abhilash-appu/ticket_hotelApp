import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/utilities/App_Layout.dart';

class AppTicketTAbs extends StatelessWidget {
  const AppTicketTAbs({super.key,required this.firstText,required this.secondText});
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              color: const Color(0XFFF4F6FD),
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: AppLayout.getScreenWidth() * 0.44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50)),
                    ),
                  ),
                  child: Center(child: Text(firstText)),
                ),
                Container(
                  width: AppLayout.getScreenWidth() * 0.44,
                  padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50)),
                    ),
                  ),
                  child: Center(child: Text(secondText)),
                ),
              ],
            ),
          );
  }
}