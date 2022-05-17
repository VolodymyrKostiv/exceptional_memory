// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'libpoem.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LibPoemAdapter extends TypeAdapter<LibPoem> {
  @override
  final int typeId = 0;

  @override
  LibPoem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LibPoem()
      ..title = fields[0] as String
      ..author = fields[1] as String
      ..lines = (fields[2] as List).cast<String>()
      ..linecount = fields[3] as String
      ..learnStatus = fields[4] as String;
  }

  @override
  void write(BinaryWriter writer, LibPoem obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.lines)
      ..writeByte(3)
      ..write(obj.linecount)
      ..writeByte(4)
      ..write(obj.learnStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LibPoemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
