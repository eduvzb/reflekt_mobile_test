import 'package:flutter/material.dart';
import 'package:reflekt_mobile_test/settings/app_colors.dart';

class ChatCard extends StatelessWidget {
  final String icon;
  final String text;

  const ChatCard({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: AppColors.primaryTextColor,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ImageIcon(
                    AssetImage(icon),
                    color: AppColors.primaryTextColor,
                    size: 17,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: 140,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.primaryTextColor,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
