import 'package:animate_do/animate_do.dart';
import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstablishmentAppBar extends StatefulWidget {
  const EstablishmentAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<EstablishmentAppBar> createState() => _EstablishmentAppBarState();
}

class _EstablishmentAppBarState extends State<EstablishmentAppBar> {
  double expandedHeight = 240;
  double toolbarHeight = 64;

  bool shadow = true;

  bool isCollapsed = false;
  SystemUiOverlayStyle systemOverlayStyle = SystemUiOverlayStyle.light;

  Future scrollListener() async {
    if (widget.scrollController.offset > expandedHeight - toolbarHeight) {
      if (!isCollapsed) {
        await Future.delayed(Duration(milliseconds: 125));
        setState(() {
          isCollapsed = true;
          shadow = false;
          systemOverlayStyle = SystemUiOverlayStyle.dark;
        });
      }
    } else if (widget.scrollController.offset <
        expandedHeight - toolbarHeight) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
          shadow = true;
          systemOverlayStyle = SystemUiOverlayStyle.light;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  EstablishmentCubit get cubit => BlocProvider.of<EstablishmentCubit>(context);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: cubit,
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: theme.custom.white,
          toolbarHeight: toolbarHeight,
          expandedHeight: expandedHeight,
          elevation: 4,
          shadowColor: theme.custom.highShadowColor,
          leading: UnconstrainedBox(
            child: CustomIconButton(
              onTap: () {
                AutoRouter.of(context).maybePop();
              },
              icon: Icons.arrow_back,
              radius: 12,
              shadow: shadow,
            ),
          ),
          title: _AppBarTitle(
            show: isCollapsed,
            establishment: state.establishment,
          ),
          actions: [
            Hero(
              tag: 'rating_${state.establishment.id}',
              child: RatingButton(rating: 4.7),
            ),
            const SizedBox(width: 8),
            CustomIconButton(
              onTap: () {},
              icon: Icons.share,
              shadow: shadow,
            ),
            const SizedBox(width: 8),
            Hero(
              tag: 'favorite_${state.establishment.id}',
              child: CustomIconButton(
                onTap: () {},
                icon: Icons.favorite_border_rounded,
                shadow: shadow,
              ),
            ),
            const SizedBox(width: 16),
          ],
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: _BackgroundImages(state.establishment),
          ),
          systemOverlayStyle: systemOverlayStyle,
        );
      },
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({required this.establishment, required this.show});

  final bool show;

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Opacity(
      opacity: show ? 1 : 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomEstablishmentType(
            type: establishment.type,
            color: theme.custom.secondaryForeground,
          ),
          Text(
            establishment.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: theme.custom.primaryForeground,
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImages extends StatefulWidget {
  const _BackgroundImages(this.establishment);

  final EstablishmentScheme establishment;

  @override
  State<_BackgroundImages> createState() => _BackgroundImagesState();
}

class _BackgroundImagesState extends State<_BackgroundImages> {
  final pageContoller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Hero(
      tag: 'image_${widget.establishment.id}',
      child: SizedBox(
        height: 220,
        child: Stack(
          children: [
            PageView(
              controller: pageContoller,
              children: widget.establishment.images.map((i) {
                return CustomImage(imageId: i.id, fit: BoxFit.cover);
              }).toList(),
            ),
            Container(
              height: mediaQuery.padding.top + 12,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    theme.custom.opacityForeground,
                    theme.custom.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: theme.custom.primaryBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: CustomPageIndicator(
                  controller: pageContoller,
                  count: widget.establishment.images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
