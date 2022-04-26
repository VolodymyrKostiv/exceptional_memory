import 'package:flutter/material.dart';

class SubTheory extends StatelessWidget {
  final String subText;
  static const TextStyle _textStyle =
      TextStyle(fontSize: 30, fontStyle: FontStyle.italic);
  const SubTheory({Key? key, required this.subText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: "sdf",
            style: _textStyle,
          ),
        ]),
      ),
    );
  }
}
