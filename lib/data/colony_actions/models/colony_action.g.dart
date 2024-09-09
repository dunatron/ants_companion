// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colony_action.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ColonyActionAdapter extends TypeAdapter<ColonyAction> {
  @override
  final int typeId = 0;

  @override
  ColonyAction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ColonyAction(
      key: fields[0] as String,
      notificationEnabled: fields[1] as bool,
      favourite: fields[2] as bool?,
      date: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ColonyAction obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.notificationEnabled)
      ..writeByte(2)
      ..write(obj.favourite)
      ..writeByte(3)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColonyActionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
