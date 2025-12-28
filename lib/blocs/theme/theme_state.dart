part of 'theme_cubit.dart';

@JsonSerializable()
class ThemeState extends Equatable {
  const ThemeState(this.isDarkTheme);

  final bool isDarkTheme;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);

  Map<String, dynamic> toJson() => _$ThemeStateToJson(this);

  @override
  List<Object?> get props => [isDarkTheme];
}

final class ThemeInitial extends ThemeState {
  const ThemeInitial(super.isDarkTheme);
}

final class ThemeUpdate extends ThemeState {
  const ThemeUpdate(super.isDarkTheme);
}
