import 'package:equatable/equatable.dart';

import 'package:ants_companion/data/_store_model_type_ids.dart';

import 'package:hive/hive.dart';

part 'color_seed.g.dart';

@HiveType(typeId: StoreModelTypeIds.colorSeed)
class ColorSeed extends Equatable {
  const ColorSeed({
    required this.brightness,
    required this.colorValue,
    required this.dynamicSchemeVariant,
  });

  @HiveField(0)
  final int colorValue;

  @HiveField(1)
  final String brightness;

  @HiveField(2)
  final String dynamicSchemeVariant;

  ColorSeed copyWith({
    final String? brightness,
    final int? colorValue,
    final String? dynamicSchemeVariant,
  }) {
    return ColorSeed(
      brightness: brightness ?? this.brightness,
      colorValue: colorValue ?? this.colorValue,
      dynamicSchemeVariant: dynamicSchemeVariant ?? this.dynamicSchemeVariant,
    );
  }

  @override
  List<Object?> get props => [brightness, colorValue, dynamicSchemeVariant];
}
