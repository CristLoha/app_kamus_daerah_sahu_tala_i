import 'package:flutter/material.dart';
import '../common/styles.dart';

class CustomTitle extends StatelessWidget {
  final String name;
  const CustomTitle({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: charcoalGrayTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semiBold,
      ),
    );
  }
}
