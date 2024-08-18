import 'package:equatable/equatable.dart';

import 'package:hive/hive.dart';

import 'package:ants_companion/data/_store_model_type_ids.dart';

part 'locale_store_model.g.dart';

@HiveType(typeId: StoreModelTypeIds.localeStoreModel)
class LocaleStoreModel extends Equatable {
  const LocaleStoreModel({
    required this.languageCode,
    this.countryCode,
  });

  @HiveField(0)
  final String languageCode;

  @HiveField(1)
  final String? countryCode;

  @override
  List<Object?> get props => [languageCode, countryCode];
}
