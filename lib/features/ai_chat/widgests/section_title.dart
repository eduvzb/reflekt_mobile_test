import 'package:flutter/material.dart';
import 'package:reflekt_mobile_test/settings/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String description;

  const SectionTitle({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'Carena',
                  fontSize: 20.0,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  color: AppColors.tertiaryTextColor,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
