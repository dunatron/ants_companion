// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_seed.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ColorSeedAdapter extends TypeAdapter<ColorSeed> {
  @override
  final int typeId = 1;

  @override
  ColorSeed read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ColorSeed(
      brightness: fields[1] as String,
      colorValue: fields[0] as int,
      dynamicSchemeVariant: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ColorSeed obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.colorValue)
      ..writeByte(1)
      ..write(obj.brightness)
      ..writeByte(2)
      ..write(obj.dynamicSchemeVariant);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorSeedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
