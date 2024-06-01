import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

///
///
///
class ButtonWidget extends StatelessWidget {
  final String label;
  final String iconName;
  final String? url;

  ///
  ///
  ///
  const ButtonWidget({
    required this.label,
    required this.iconName,
    this.url,
    super.key,
  });

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: url == null ? null : () => launchUrlString(url!),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('assets/icons/$iconName.png', height: 16),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
