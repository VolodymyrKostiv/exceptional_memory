import 'package:flutter/material.dart';

class GeneralTheory extends StatelessWidget {
  final String generalText;
  const GeneralTheory({Key? key, required this.generalText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        generalText,
      ),
    );
  }
}
