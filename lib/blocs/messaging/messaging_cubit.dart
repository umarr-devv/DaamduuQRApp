import 'package:app/service/service.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'messaging_cubit.g.dart';
part 'messaging_state.dart';

class MessagingCubit extends HydratedCubit<MessagingState> {
  MessagingCubit() : super(MessagingInitial());

  final messaging = GetIt.I<FirebaseMessagingService>();

  Future update() async {
    final pushToken = messaging.pushToken;
    final newState = state.copyWith(pushToken);
    emit(MessagingUpdate(newState));
  }

  @override
  Map<String, dynamic>? toJson(MessagingState state) => state.toJson();

  @override
  MessagingState? fromJson(Map<String, dynamic> json) =>
      MessagingState.fromJson(json);
}
