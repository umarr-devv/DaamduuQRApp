import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'barcode_state.dart';

class BarcodeCubit extends Cubit<BarcodeState> {
  BarcodeCubit() : super(BarcodeInitial());

  void setBarcode(String? barcode) {
    if (barcode != state.barcode) {
      emit(BarcodeState(barcode: barcode));
    }
  }
}
