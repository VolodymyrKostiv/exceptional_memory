import 'package:hive/hive.dart';

import '../enums/status.dart';

part 'libpoem.g.dart';

@HiveType(typeId: 0)
class LibPoem extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late String author;

  @HiveField(2)
  late List<String> lines;

  @HiveField(3)
  late String linecount;

  @HiveField(4)
  late String learnStatus;
}
