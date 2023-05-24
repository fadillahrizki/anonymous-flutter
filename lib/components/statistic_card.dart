import 'package:flutter/material.dart';
import '../constants/custom_color.dart';

class StatisticCard extends StatelessWidget {
  const StatisticCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
  });

  final String title, subtitle, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: CustomColor().secondary),
        borderRadius: BorderRadius.circular(8),
        color: CustomColor().white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: CustomColor().primary,
            child: Text(
              text,
              style: TextStyle(color: CustomColor().white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
