import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'establishment_cubit.g.dart';
part 'establishment_state.dart';

class EstablishmentCubit extends HydratedCubit<EstablishmentState> {
  EstablishmentCubit(EstablishmentScheme establishment)
    : super(
        EstablishmentInitial(
          establishment: establishment,
          updateTime: DateTime(0),
        ),
      );

  final client = GetIt.I<DaamduuqrClient>();
  final talker = GetIt.I<Talker>();

  Future update() async {
    if (DateTime.now().difference(state.updateTime) > Duration(minutes: 5)) {
      await forceUpdate();
    }
  }

  Future forceUpdate() async {
    emit(EstablishmentLoading(state));
    try {
      final newState = await getData();
      emit(EstablishmentLoaded(newState));
    } catch (exc) {
      talker.error(exc);
      emit(EstablishmentFailure(state));
    }
  }

  Future<EstablishmentState> getData() async {
    final response = await client.getEstablishmentsApi().getEstablishment(
      establishmentId: state.establishment.id,
    );
    return state.copyWith(detail: response.data);
  }

  @override
  String get id => state.establishment.id;

  @override
  Map<String, dynamic>? toJson(EstablishmentState state) {
    return state.toJson();
  }

  @override
  EstablishmentState? fromJson(Map<String, dynamic> json) {
    return EstablishmentState.fromJson(json);
  }
}
