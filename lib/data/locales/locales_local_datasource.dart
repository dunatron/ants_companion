import 'package:ants_companion/data/locales/models/locale_store_model.dart';
import 'package:hive/hive.dart';
import 'package:ants_companion/core/log/loggers.dart';

class LocalesLocalDatasource {
  LocalesLocalDatasource(this._box);

  final Box<LocaleStoreModel> _box;

  final logger = appLogger(LocalesLocalDatasource);

  static const String localeKey = 'current-locale';

  LocaleStoreModel? getLocale() {
    logger.d('Fetching locale from cache.');
    try {
      final item = _box.get(localeKey);
      return item;
    } catch (e, s) {
      logger.e('Failed to get locale from cache: $e', error: e, stackTrace: s);
      throw Exception('Failed to get locale: $e');
    }
  }

  Future<LocaleStoreModel> putLocale(final LocaleStoreModel item) async {
    logger.d('Updating locale $item in cache.');

    await _box.put(localeKey, item);
    logger.i('Cached locale $item');
    return item;
  }

  Future<void> clear() async {
    logger.d('Clearing locale cache.');

    try {
      await _box.clear();

      logger.i('Successfully cleared locale cache.');
    } on HiveError catch (e, s) {
      logger.e('Failed to clear locale cache.', error: e, stackTrace: s);
      throw Exception('Failed to clear locale cache');
    }
  }
}
