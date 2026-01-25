import 'package:app/data/models/extentions/establishment.dart';
import 'package:bloc/bloc.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'scan_state.dart';

class ScanCubit extends Cubit<ScanState> {
  ScanCubit() : super(ScanInitial());

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future scan(String barcode) async {
    if (state.scanTime != null &&
        DateTime.now().difference(state.scanTime!) < Duration(seconds: 5)) {
      return;
    }

    emit(ScanLoading(state));
    try {
      final place = await client.getPlacesApi().getPlace(placeId: barcode);
      if (place.data == null) {
        emit(ScanFailure(state));
        return;
      }
      final establishment = await client
          .getEstablishmentsApi()
          .getEstablishment(establishmentId: place.data!.establishmentId);
      final newState = state.copyWith(
        place: place.data,
        establishment: establishment.data?.getDefault(),
        scanTime: DateTime.now(),
      );
      emit(ScanLoaded(newState));
    } catch (exc, st) {
      talker.error(exc, st);
      emit(ScanFailure(state));
    }
  }
}
