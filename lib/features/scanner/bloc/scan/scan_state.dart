// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'scan_cubit.dart';

class ScanState extends Equatable {
  const ScanState({this.place, this.establishment, this.scanTime});

  final PlaceScheme? place;
  final EstablishmentScheme? establishment;
  final DateTime? scanTime;

  ScanState copyWith({
    PlaceScheme? place,
    EstablishmentScheme? establishment,
    DateTime? scanTime,
  }) {
    return ScanState(
      place: place ?? this.place,
      establishment: establishment ?? this.establishment,
      scanTime: scanTime ?? this.scanTime,
    );
  }

  ScanState.from(ScanState other)
    : place = other.place,
      establishment = other.establishment,
      scanTime = other.scanTime;

  @override
  List<Object?> get props => [place, establishment, scanTime];
}

final class ScanInitial extends ScanState {}

final class ScanLoading extends ScanState {
  ScanLoading(super.state) : super.from();
}

final class ScanLoaded extends ScanState {
  ScanLoaded(super.state) : super.from();
}

final class ScanFailure extends ScanState {
  ScanFailure(super.state) : super.from();
}
