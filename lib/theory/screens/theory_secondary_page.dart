import 'package:exceptional_memory/theory/widgets/sub_theory.dart';
import 'package:flutter/material.dart';

class TheorySecondaryPage extends StatelessWidget {
  const TheorySecondaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ass'),
      ),
      body: const SubTheory(
        subText: 'a',
      ),
    );
  }
}
