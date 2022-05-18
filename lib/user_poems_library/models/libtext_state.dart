import 'dart:developer';

import '../enums/status.dart';
import 'package:flutter/material.dart';

class LibTextStateProvider extends ChangeNotifier {
  Status _status = Status.notStarted;

  set status(newValue) {
    _status = newValue;
    notifyListeners();
  }

  Status get status => _status;
}
