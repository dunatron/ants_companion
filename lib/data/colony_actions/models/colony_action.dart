import 'package:ants_companion/data/_store_model_type_ids.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'colony_action.g.dart';

@HiveType(typeId: StoreModelTypeIds.colonyAction)
class ColonyAction extends Equatable {
  const ColonyAction({
    required this.key,
    required this.notificationEnabled,
    required this.favourite,
    required this.date,
  });

  @HiveField(0)
  final String key;

  @HiveField(1)
  final bool notificationEnabled;

  @HiveField(2)
  final bool? favourite;

  @HiveField(3)
  final DateTime? date;

  @override
  List<Object?> get props => [key, notificationEnabled, favourite, date];
}
