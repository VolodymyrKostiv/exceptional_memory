import 'package:exceptional_memory/theory/widgets/sub_theory.dart';
import 'package:flutter/material.dart';

class TheorySecondaryScreen extends StatelessWidget {
  final String textName;
  final String textContent;

  const TheorySecondaryScreen(
      {Key? key, required this.textName, required this.textContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          textName,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: Theme.of(context).textTheme.headline2,
      ),
      body: SubTheory(
        subText: textContent,
      ),
    );
  }
}
