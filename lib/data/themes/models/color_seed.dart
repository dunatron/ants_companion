import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ColorSeed extends Equatable {
  const ColorSeed({
    required this.brightness,
    required this.color,
    required this.dynamicSchemeVariant,
  });
  final Color color;
  final Brightness brightness;
  final DynamicSchemeVariant dynamicSchemeVariant;

  ColorSeed copyWith({
    final Brightness? brightness,
    final Color? color,
    final DynamicSchemeVariant? dynamicSchemeVariant,
  }) {
    return ColorSeed(
      brightness: brightness ?? this.brightness,
      color: color ?? this.color,
      dynamicSchemeVariant: dynamicSchemeVariant ?? this.dynamicSchemeVariant,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [brightness, color, dynamicSchemeVariant];
}
