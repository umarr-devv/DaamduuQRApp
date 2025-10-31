part of 'messaging_cubit.dart';

@JsonSerializable()
class MessagingState extends Equatable {
  const MessagingState({this.pushToken});

  final String? pushToken;

  MessagingState copyWith(String? pushToken) {
    return MessagingState(pushToken: pushToken ?? this.pushToken);
  }

  MessagingState.from(MessagingState other) : pushToken = other.pushToken;

  factory MessagingState.fromJson(Map<String, dynamic> json) =>
      _$MessagingStateFromJson(json);

  Map<String, dynamic> toJson() => _$MessagingStateToJson(this);

  @override
  List<Object?> get props => [pushToken];
}

final class MessagingInitial extends MessagingState {}

final class MessagingUpdate extends MessagingState {
  MessagingUpdate(super.state) : super.from();
}
