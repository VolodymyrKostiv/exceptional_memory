import 'package:flutter/material.dart';

import '../screens/theory_secondary_screen.dart';

class TheoryPageLink extends StatelessWidget {
  final String linkName;
  final TheorySecondaryScreen page;

  const TheoryPageLink({Key? key, required this.linkName, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text(
          linkName.toUpperCase(),
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
      ),
    );
  }
}
