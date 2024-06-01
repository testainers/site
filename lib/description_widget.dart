import 'package:flutter/material.dart';

///
///
///
class DescriptionWidget extends StatelessWidget {
  final String? imageName;
  final List<String> paragraphs;

  ///
  ///
  ///
  const DescriptionWidget({
    this.imageName,
    this.paragraphs = const <String>[],
    super.key,
  });

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (imageName != null)
                Image.asset(
                  'assets/images/$imageName.png',
                )
              else
                Container(),
            ],
          ),
        ),
        Flexible(
          child: Column(
            children: <Widget>[
              if (paragraphs.isNotEmpty)
                ...paragraphs.map(
                  (String paragraph) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      paragraph,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 20),
                    ),
                  ),
                )
              else
                Container(),
            ],
          ),
        ),
      ],
    );
  }
}
