import 'package:exceptional_memory/theory/widgets/general_theory.dart';
import 'package:flutter/material.dart';

import '../screens/theory_secondary_page.dart';

class TheoryPageLink extends StatelessWidget {
  final String linkName;
  const TheoryPageLink({Key? key, required this.linkName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text(
          linkName.toUpperCase(),
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TheorySecondaryPage(),
            ),
          );
        },
      ),
    );
  }
}
