import 'package:flutter/material.dart';
import 'package:tasky/core/helpers/spacing.dart';
import 'package:tasky/core/theming/colors.dart';

class TopHomeBar extends StatelessWidget {
  const TopHomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Tasky', style: TextStyle(fontSize: 24)),
        const Spacer(),
        const Icon(Icons.person_2_outlined),
        horizontalSpace(10),
        const Icon(
          Icons.logout,
          color: ColorsManager.mainColor,
        ),
      ],
    );
  }
}
