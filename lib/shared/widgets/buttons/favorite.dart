import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.id, this.shadow = true});

  final bool shadow;
  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = BlocProvider.of<FavoriteCubit>(context);
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      bloc: cubit,
      builder: (context, state) {
        final favorite = state.isFavorite(id);
        return CustomIconButton(
          icon: favorite
              ? Icons.favorite_rounded
              : Icons.favorite_border_rounded,
          background: theme.custom.background,
          foreground: favorite ? theme.custom.accent : theme.custom.foreground,
          shadow: shadow,
          onTap: () {
            if (favorite) {
              cubit.remove(id);
            } else if (!favorite) {
              cubit.add(id);
            }
          },
        );
      },
    );
  }
}
