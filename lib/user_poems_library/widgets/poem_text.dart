import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/poem_font_size_provider.dart';

class PoemText extends StatelessWidget {
  final List<String> lines;
  ScrollController _scrollController = new ScrollController();

  PoemText({Key? key, required this.lines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 671,
      child: Center(
        child: ListView.builder(
          controller: _scrollController,
          itemCount: lines.length,
          itemBuilder: (
            context,
            index,
          ) {
            return Text(
              lines[index],
              style: TextStyle(
                fontSize: Provider.of<PoemFontSizeProvider>(context).value,
              ),
            );
          },
        ),
      ),
    );
  }
}
