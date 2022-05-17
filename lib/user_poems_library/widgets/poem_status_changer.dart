import '../enums/status.dart';
import '../helpers/statusStringHelper.dart';
import 'package:flutter/material.dart';

class PoemStatusChanger extends StatefulWidget {
  const PoemStatusChanger({Key? key}) : super(key: key);

  @override
  State<PoemStatusChanger> createState() => _PoemStatusChangerState();
}

class _PoemStatusChangerState extends State<PoemStatusChanger> {
  Status? _character = Status.notStarted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            StatusStringHelper.getStringByStatus(Status.notStarted),
          ),
          leading: Radio<Status>(
            value: Status.notStarted,
            groupValue: _character,
            onChanged: (Status? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            StatusStringHelper.getStringByStatus(Status.inProgress),
          ),
          leading: Radio<Status>(
            value: Status.inProgress,
            groupValue: _character,
            onChanged: (Status? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            StatusStringHelper.getStringByStatus(Status.finished),
          ),
          leading: Radio<Status>(
            value: Status.finished,
            groupValue: _character,
            onChanged: (Status? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
