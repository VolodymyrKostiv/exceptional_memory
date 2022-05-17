import 'dart:developer';

import 'package:exceptional_memory/boxes.dart';
import 'package:flutter/material.dart';
import 'poem_page.dart';
import '../widgets/poem_card.dart';
import '../models/libpoem.dart';

class PoemLib extends StatefulWidget {
  const PoemLib({Key? key}) : super(key: key);

  @override
  _PoemLibState createState() => _PoemLibState();
}

class _PoemLibState extends State<PoemLib> {
  final pageName = "My texts";

  List<LibPoem> _poems = [];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _poems = Boxes.getLibPoems().values.toList().cast<LibPoem>();
    log(_poems[0].author);

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getDataNTimes(10);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _getDataNTimes(int number) {}

  void _getData() async {}

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
      body: _poems == null || _poems.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              controller: _scrollController,
              itemCount: _poems.length,
              itemBuilder: (
                context,
                index,
              ) {
                return GestureDetector(
                  onTap: (() => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PoemPage(
                              poem: _poems[index],
                            ),
                          ),
                        ),
                      }),
                  child: PoemCard(
                    poem: _poems[index],
                  ),
                );
              },
            ),
    );
  }
}
