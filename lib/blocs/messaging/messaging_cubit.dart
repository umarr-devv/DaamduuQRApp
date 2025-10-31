import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'messaging_cubit.g.dart';
part 'messaging_state.dart';

class MessagingCubit extends HydratedCubit<MessagingState> {
  MessagingCubit() : super(MessagingInitial());

  Future update() async {
    final pushToken = await FirebaseMessaging.instance.getToken();
    final newState = state.copyWith(pushToken);
    emit(MessagingUpdate(newState));
  }

  @override
  Map<String, dynamic>? toJson(MessagingState state) => state.toJson();

  @override
  MessagingState? fromJson(Map<String, dynamic> json) =>
      MessagingState.fromJson(json);
}
