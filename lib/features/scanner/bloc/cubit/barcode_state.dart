part of 'barcode_cubit.dart';

class BarcodeState extends Equatable {
  const BarcodeState({this.barcode});

  final String? barcode;

  @override
  List<Object?> get props => [barcode];
}

final class BarcodeInitial extends BarcodeState {}
