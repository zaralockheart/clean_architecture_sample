part of 'wifi_bloc.dart';

class WifiState extends Equatable {
  final List<WifiModel> wifi;
  final String status;
  final LocationData currentLocation;

  WifiState({
    this.wifi,
    this.status,
    this.currentLocation,
  });

  factory WifiState.initial() => WifiState(
        wifi: <WifiModel>[],
        status: S.current.outside,
        currentLocation: null,
      );

  WifiState copyWith({
    List<WifiModel> wifi,
    String status,
    LocationData currentLocation,
  }) =>
      WifiState(
        wifi: wifi ?? this.wifi,
        status: status ?? this.status,
        currentLocation: currentLocation ?? this.currentLocation,
      );

  @override
  List<Object> get props => [
        wifi,
        status,
        currentLocation,
      ];
}
