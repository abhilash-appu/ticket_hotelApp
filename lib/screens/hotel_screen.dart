import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sample_programming/screens/utilities/App_Layout.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';

class hotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const hotelView({super.key, required this.hotel});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: (size.width) * 0.6,
      margin: const EdgeInsets.only(
        right: 17,
        top: 5,
      ),
      decoration: BoxDecoration(
        color: styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: styles.headLineStyle2.copyWith(
              color: styles.kakicolor,
            ),
          ),
          const Gap(10),
          Text(
            hotel['destination'],
            style: styles.headLineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(10),
          Text(
            "\$${hotel['price']}/night",
            style: styles.headLineStyle1.copyWith(
              color: styles.kakicolor,
            ),
          ),
        ],
      ),
    );
  }
}
