import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable(explicitToJson: true)
class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@JsonSerializable(explicitToJson: true)
class TimestampListConverter
    implements JsonConverter<List<DateTime>, List<Timestamp>> {
  const TimestampListConverter();

  @override
  List<DateTime> fromJson(List<dynamic> timestamps) {
    return timestamps
        .map((timestamp) => (timestamp as Timestamp).toDate())
        .toList();
  }

  @override
  List<Timestamp> toJson(List<DateTime> dates) =>
      dates.map((date) => Timestamp.fromDate(date)).toList();
}
