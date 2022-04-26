import 'package:exceptional_memory/theory/widgets/general_theory.dart';
import 'package:exceptional_memory/theory/widgets/theory_page_link.dart';
import 'package:flutter/material.dart';

class TheoryMainPage extends StatelessWidget {
  const TheoryMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          GeneralTheory(),
          TheoryPageLink(
            linkName: 'Open the full text of the memorization technique',
          ),
          TheoryPageLink(
            linkName: 'open a summary of the memorization technique',
          ),
          TheoryPageLink(
            linkName: 'memory algorithm',
          ),
        ],
      ),
    );
  }
}
