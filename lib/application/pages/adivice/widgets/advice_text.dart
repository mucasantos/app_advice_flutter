import 'package:flutter/material.dart';

class AdviceText extends StatelessWidget {
  const AdviceText({
    super.key,
    required this.advice,
  });
  final String advice;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: themeData.colorScheme.onPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Text(
            advice,
            style: themeData.textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
