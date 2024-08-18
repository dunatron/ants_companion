import 'package:hive/hive.dart';
import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/data/themes/models/color_seed.dart';

class ThemesLocalDatasource {
  ThemesLocalDatasource(this._box);

  final Box<ColorSeed> _box;

  final logger = appLogger(ThemesLocalDatasource);

  static const String colorSeedKey = 'current-color-seed';

  ColorSeed? getColorSeed() {
    logger.d('Fetching color seed from cache.');
    try {
      final item = _box.get(colorSeedKey);
      return item;
    } catch (e, s) {
      logger.e('Failed to get color from cache: $e', error: e, stackTrace: s);
      throw Exception('Failed to get colony Actions: $e');
    }
  }

  Future<ColorSeed> putColorSeed(final ColorSeed item) async {
    logger.d('Updating color seed $item in cache.');

    await _box.put(colorSeedKey, item);
    logger.i('Cached color seed $item');
    return item;
  }

  Future<void> clear() async {
    logger.d('Clearing color seed cache.');

    try {
      await _box.clear();

      logger.i('Successfully cleared color seed cache.');
    } on HiveError catch (e, s) {
      logger.e('Failed to clear color seed cache.', error: e, stackTrace: s);
      throw Exception('Failed to clear color seed cache');
    }
  }
}
