import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, required this.id});

  final String id;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  final scale = ValueNotifier<double>(1);

  Future animate() async {
    scale.value = 0.75;
    await Future.delayed(const Duration(milliseconds: 125));
    scale.value = 1;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cubit = BlocProvider.of<FavoriteCubit>(context);
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      bloc: cubit,
      builder: (context, state) {
        final favorite = state.isFavorite(widget.id);
        return IconButton(
          onPressed: () async {
            if (favorite) {
              cubit.remove(widget.id);
            } else if (!favorite) {
              cubit.add(widget.id);
            }
            await animate();
          },
          icon: ValueListenableBuilder(
            valueListenable: scale,
            builder: (context, value, child) {
              return AnimatedScale(
                scale: value,
                duration: const Duration(milliseconds: 125),
                child: Icon(
                  favorite
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded,
                  color: favorite
                      ? theme.custom.primary
                      : theme.custom.foreground,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
