import 'package:app/core/router/router.dart';
import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class EstablishmentStories extends StatelessWidget {
  const EstablishmentStories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: BlocProvider.of<EstablishmentCubit>(context),
      builder: (context, state) {
        if (state is EstablishmentLoading) {
          return _LoadingPlaceholder();
        } else if (state.stories.isEmpty) {
          return SizedBox();
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

class _LoadingPlaceholder extends StatelessWidget {
  const _LoadingPlaceholder();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 12),
      height: 80,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: theme.custom.shimmerBase,
          highlightColor: theme.custom.shimmerHighlight,
          child: Container(
            width: 80,
            decoration: BoxDecoration(
              color: theme.custom.primary,
              borderRadius: BorderRadius.circular(64),
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 12),
        itemCount: 6,
      ),
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
          border: Border.all(color: theme.custom.blue, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(128),
          child: CustomImage(imageId: story.imageId),
        ),
      ),
    );
  }
}
