import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
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
  double expandedHeight = 280;
  double toolbarHeight = 64;

  bool isCollapsed = false;

  Future scrollListener() async {
    if (widget.scrollController.offset > expandedHeight - toolbarHeight) {
      if (!isCollapsed) {
        await Future.delayed(Duration(milliseconds: 125));
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset <
        expandedHeight - toolbarHeight) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
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
          backgroundColor: theme.custom.background,
          toolbarHeight: toolbarHeight,
          expandedHeight: expandedHeight,
          pinned: true,
          leading: MaybePopButton(),
          title: _AppBarTitle(
            show: isCollapsed,
            establishment: state.establishment,
          ),
          actions: [
            FavoriteButton(id: state.establishment.id),
            ShareButton(),
            SizedBox(width: 8),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: _BackgroundImages(state.establishment),
          ),
          systemOverlayStyle: isCollapsed ? null : SystemUiOverlayStyle.light,
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
        spacing: 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomEstablishmentType(
            type: establishment.type,
            color: theme.custom.onMuted,
          ),
          Text(establishment.name, style: theme.custom.label),
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
                    theme.custom.foreground.withValues(alpha: 0.1),
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
                  color: theme.custom.background,
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
