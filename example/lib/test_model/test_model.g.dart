// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TestAdapter extends TypeAdapter<Test> {
  @override
  final int typeId = 0;

  @override
  Test read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Test(
      id: fields[1] as String,
      data: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Test obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
