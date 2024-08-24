import 'package:equatable/equatable.dart';

class ColonyAction extends Equatable {
  const ColonyAction({
    required this.key,
    required this.order,
    required this.date,
    required this.day,
    required this.hour,
    required this.notificationEnabled,
    required this.favourite,
  });

  static String makeKey({required int day, required int hour}) {
    return '${day + 1}-$hour';
  }

  final String key;

  final int order;

  final DateTime date;

  final int day;

  final int hour;

  final bool notificationEnabled;

  final bool favourite;

  ColonyAction copyWith({
    bool? notificationEnabled,
    bool? favourite,
  }) {
    return ColonyAction(
      key: key,
      order: order,
      date: date,
      day: day,
      hour: hour,
      notificationEnabled: notificationEnabled ?? this.notificationEnabled,
      favourite: favourite ?? this.favourite,
    );
  }

  @override
  List<Object?> get props => [key, date, day, hour, notificationEnabled];
}
