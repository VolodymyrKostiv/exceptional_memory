import 'package:flutter/material.dart';

class PoemAPIText extends StatelessWidget {
  final List<String> lines;
  final ScrollController _scrollController = new ScrollController();

  PoemAPIText({Key? key, required this.lines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: lines.length,
        itemBuilder: (
          context,
          index,
        ) {
          return Text(
            lines[index],
          );
        },
      ),
    );
  }
}
