import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/data/colony_actions/models/colony_action.dart';
import 'package:hive/hive.dart';

class ColonyActionsLocalDatasource {
  ColonyActionsLocalDatasource(this._box);

  final Box<ColonyAction> _box;

  final logger = appLogger(ColonyActionsLocalDatasource);

  List<ColonyAction> getAll() {
    logger.d('Fetching colony actions from cache.');
    try {
      final items = _box.values.toList();
      logger.i('Retrieved ${items.length} colony actions from cache.');
      return items;
    } catch (e, s) {
      logger.e('Failed to get colony actions from cache: $e',
          error: e, stackTrace: s);
      throw Exception('Failed to get colony Actions: $e');
    }
  }

  Future<void> putAll(List<ColonyAction> items) async {
    logger.d('Caching ${items.length} tier tags.');
    final Map<String, ColonyAction> itemMap = {
      for (var item in items) item.key: item,
    };
    await _box.putAll(itemMap);
    logger.i('Cached ${items.length} tier tags.');
  }

  Future<ColonyAction> update(final ColonyAction item) async {
    logger.d('Updating $item in cache.');
    // await _box.put(item.key, item);
    await _box.put(
      item.key,
      ColonyAction(
        key: item.key,
        notificationEnabled: item.notificationEnabled,
        favourite: item.favourite,
        date: item.date,
      ),
    );
    logger.i('Cached $item');
    return item;
  }

  Future<void> clear() async {
    logger.d('Clearing tier tags cache.');

    try {
      await _box.clear();

      logger.i('Successfully cleared tier tags cache.');
    } on HiveError catch (e, s) {
      logger.e('Failed to clear tier tags cache.', error: e, stackTrace: s);
      throw Exception('Failed to clear tier tags cache');
    }
  }
}
