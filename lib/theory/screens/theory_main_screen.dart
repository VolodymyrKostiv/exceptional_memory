import 'package:exceptional_memory/theory/screens/theory_secondary_screen.dart';
import 'package:exceptional_memory/theory/widgets/general_theory.dart';
import 'package:exceptional_memory/theory/widgets/theory_page_link.dart';
import 'package:flutter/material.dart';

class TheoryMainScreen extends StatelessWidget {
  final String pageName = "Theory";

  final String generalTheoryText = 'General theory text';
  final String f11 = 'Open the full text of the memorization technique';
  final String f12 = 'First text';

  final String f21 = 'open a summary memorization technique';
  final String f22 = 'Second text';

  final String f31 = 'memory algorithm';
  final String f32 = 'Third text';

  const TheoryMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: FittedBox(
          child: Text(
            pageName,
          ),
          fit: BoxFit.fitHeight,
        ),
        titleTextStyle: Theme.of(context).textTheme.headline1,
      ),
      body: Column(
        children: [
          GeneralTheory(generalText: generalTheoryText),
          TheoryPageLink(
            linkName: f11,
            page:
                TheorySecondaryScreen(textName: "Full text", textContent: f12),
          ),
          TheoryPageLink(
            linkName: f21,
            page: TheorySecondaryScreen(
              textName: "Summary",
              textContent: f22,
            ),
          ),
          TheoryPageLink(
            linkName: f31,
            page: TheorySecondaryScreen(
              textName: "Algorithm",
              textContent: f32,
            ),
          ),
        ],
      ),
    );
  }
}
