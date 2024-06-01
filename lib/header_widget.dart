import 'package:flutter/material.dart';

///
///
///
class HeaderWidget extends StatelessWidget {
  final String label;

  ///
  ///
  ///
  const HeaderWidget(
    this.label, {
    super.key,
  });

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
