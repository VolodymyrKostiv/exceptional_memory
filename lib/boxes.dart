import 'package:exceptional_memory/user_poems_library/models/libpoem.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<LibPoem> getLibPoems() => Hive.box<LibPoem>('libpoems');
}
