import 'package:flutter/material.dart';

class SubTheory extends StatelessWidget {
  final String subText;

  const SubTheory({Key? key, required this.subText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: Text(
        subText,
      ),
    );
  }
}
