import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'wifi_db_model.g.dart';

@HiveType(typeId: 0)
class WifiDbModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  String wifiName;

  @HiveField(1)
  double latitude;

  @HiveField(2)
  double longitude;

  @HiveField(3)
  double radius;

  WifiDbModel({
    this.wifiName = '',
    this.latitude = 0.0,
    this.longitude = 0.0,
    this.radius = 0.0,
  });

  @override
  List<Object> get props => [
        wifiName,
        latitude,
        longitude,
        radius,
      ];

  @override
  String toString() => '''WifiModel(wifiName: $wifiName,
          latitude: $latitude,
          longitude: $longitude,
          radius: $radius,
       )''';
}
