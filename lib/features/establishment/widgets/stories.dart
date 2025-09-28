import 'package:app/core/router/router.dart';
import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/utils/file.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstablishmentStories extends StatelessWidget {
  const EstablishmentStories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: BlocProvider.of<EstablishmentCubit>(context),
      builder: (context, state) {
        if (state is EstablishmentInitial) {
          return Container();
        }
        return Container(
          margin: const EdgeInsets.only(top: 4, bottom: 12),
          height: 80,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) =>
                _StoryItem(story: state.stories[index]),
            separatorBuilder: (context, index) => SizedBox(width: 12),
            itemCount: state.stories.length,
          ),
        );
      },
    );
  }
}

class _StoryItem extends StatelessWidget {
  const _StoryItem({required this.story});

  final StoryScheme story;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(StoryRoute(story: story));
      },
      child: Container(
        height: 80,
        width: 80,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(128),
          border: Border.all(color: theme.custom.info, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(128),
          child: CachedNetworkImage(
            imageUrl: fileUrl(story.imageId!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
