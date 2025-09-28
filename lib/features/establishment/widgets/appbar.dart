import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:app/utils/file.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EstablishmentAppBar extends StatefulWidget {
  const EstablishmentAppBar({
    super.key,
    required this.establishment,
    required this.scrollController,
  });

  final ScrollController scrollController;
  final EstablishmentScheme establishment;

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      backgroundColor: theme.custom.white,
      toolbarHeight: toolbarHeight,
      expandedHeight: expandedHeight,
      leading: Row(
        children: [
          CustomTitleButton(
            onTap: () {
              AutoRouter.of(context).maybePop();
            },
            icon: Icons.arrow_back_ios_new_rounded,
            shadow: shadow,
          ),
        ],
      ),
      title: _AppBarTitle(
        show: isCollapsed,
        establishment: widget.establishment,
      ),
      actions: [
        CustomTitleButton(
          onTap: () {},
          icon: Icons.favorite,
          color: theme.custom.primaryColor,
          shadow: shadow,
        ),
        const SizedBox(width: 4),
      ],
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: _BackgroundImages(widget.establishment),
      ),
      systemOverlayStyle: systemOverlayStyle,
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
          Row(
            spacing: 6,
            children: [
              SvgPicture.asset(
                'assets/svg/restaurant.svg',
                height: 16,
                colorFilter: ColorFilter.mode(
                  theme.custom.secondaryForeground,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                'Ресторан',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: theme.custom.secondaryForeground,
                ),
              ),
            ],
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
    return Hero(
      tag: widget.establishment.id,
      child: SizedBox(
        height: 220,
        child: Stack(
          children: [
            PageView(
              controller: pageContoller,
              children: widget.establishment.images.map((i) {
                return CachedNetworkImage(
                  imageUrl: fileUrl(i.id),
                  fit: BoxFit.cover,
                );
              }).toList(),
            ),
            Container(
              height: 36,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [theme.custom.opacityBlack, theme.custom.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 24,
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
