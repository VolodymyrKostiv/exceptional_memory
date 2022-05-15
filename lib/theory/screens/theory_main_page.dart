import 'package:exceptional_memory/theory/screens/theory_secondary_page.dart';
import 'package:exceptional_memory/theory/widgets/general_theory.dart';
import 'package:exceptional_memory/theory/widgets/theory_page_link.dart';
import 'package:flutter/material.dart';

class TheoryMainPage extends StatelessWidget {
  final String generalTheoryText = 'General theory text';
  final String f11 = 'Open the full text of the memorization technique';
  final String f12 = 'First text';

  final String f21 = 'open a summary memorization technique';
  final String f22 = 'Second text';

  final String f31 = 'memory algorithm';
  final String f32 = 'Third text';

  const TheoryMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GeneralTheory(generalText: generalTheoryText),
          TheoryPageLink(
            linkName: f11,
            page: TheorySecondaryPage(textName: "Full text", textContent: f12),
          ),
          TheoryPageLink(
            linkName: f21,
            page: TheorySecondaryPage(
              textName: "Summary",
              textContent: f22,
            ),
          ),
          TheoryPageLink(
            linkName: f31,
            page: TheorySecondaryPage(
              textName: "Algorithm",
              textContent: f32,
            ),
          ),
        ],
      ),
    );
  }
}
