import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = BlocProvider.of<FavoriteCubit>(context);
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      bloc: cubit,
      builder: (context, state) {
        final favorite = state.isFavorite(id);
        return IconButton(
          onPressed: () {
            if (favorite) {
              cubit.remove(id);
            } else if (!favorite) {
              cubit.add(id);
            }
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(64),
            ),
          ),
          icon: Icon(
            favorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            color: favorite ? theme.custom.primary : theme.custom.foreground,
          ),
        );
      },
    );
  }
}
