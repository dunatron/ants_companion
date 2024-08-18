import 'dart:async';

import 'package:ants_companion/domain/themes/models/color_seed.dart';
import 'package:ants_companion/domain/themes/themes.dart';
import 'package:ants_companion/ui/home/scientific_classifications_feature_info.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';
import 'package:ants_companion/ui/theme/brightness_picker.dart';
import 'package:ants_companion/ui/theme/color_picker.dart';
import 'package:ants_companion/ui/theme/scheme_variant_picker.dart';
import 'package:ants_companion/ui/theme/theme_examples.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ThemePickerScreen extends StatefulWidget {
  const ThemePickerScreen({super.key});

  @override
  State<ThemePickerScreen> createState() => _ThemePickerScreenState();
}

class _ThemePickerScreenState extends State<ThemePickerScreen> {
  late ColorSeed modelState;
  late ColorSeed initialModelState;
  late StreamSubscription<ColorSeed> sub;

  final Themes themes = GetIt.I();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSeed();
    sub = themes.currentColorScheme().listen((e) {
      setState(() {
        modelState = e;
        initialModelState = e;
      });
    });

    // modelState = const ColorSeed(
    //   dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
    //   brightness: Brightness.light,
    //   color: Colors.pink,
    // );
  }

  @override
  dispose() {
    super.dispose();
    sub.cancel();
  }

  initSeed() {
    final seed = themes.currentSeed;

    modelState = ColorSeed(
      dynamicSchemeVariant: seed.dynamicSchemeVariant,
      brightness: seed.brightness,
      color: seed.color,
    );

    initialModelState = ColorSeed(
      dynamicSchemeVariant: seed.dynamicSchemeVariant,
      brightness: seed.brightness,
      color: seed.color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: modelState.color,
          // seedColor wont actually matter with monochrome
          dynamicSchemeVariant: modelState.dynamicSchemeVariant,
          brightness: modelState.brightness,
        ),
      ),
      child: PageLayout(
        title: 'Theme Picker',
        floatingActionButton: modelState != initialModelState
            ? FloatingActionButton.extended(
                onPressed: () {
                  GetIt.I<Themes>().applyColorScheme(modelState);

                  context.go('/');
                },
                label: Text('Apply Theme'),
              )
            : null,
        widgets: [
          BrightnessPicker(
            brightness: modelState.brightness,
            onTap: (brightness) {
              setState(() {
                modelState = modelState.copyWith(
                  brightness: brightness,
                );
              });
            },
          ),
          SchemeVariantPicker(
            schemeVariants: DynamicSchemeVariant.values,
            selectedSchemeVariant: modelState.dynamicSchemeVariant,
            onTap: (dynamicSchemeVariant) {
              setState(() {
                modelState = modelState.copyWith(
                  dynamicSchemeVariant: dynamicSchemeVariant,
                );
              });
            },
          ),
          ColorPicker(
            selectedColor: modelState.color,
            onTap: (color) {
              setState(() {
                modelState = modelState.copyWith(color: color);
              });
            },
          ),
          ThemeExamples(
            seed: modelState,
          ),
        ],
      ),
    );
  }
}
