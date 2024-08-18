// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_store_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocaleStoreModelAdapter extends TypeAdapter<LocaleStoreModel> {
  @override
  final int typeId = 2;

  @override
  LocaleStoreModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocaleStoreModel(
      languageCode: fields[0] as String,
      countryCode: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocaleStoreModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.countryCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocaleStoreModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
