import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      title: _AppBarTitle(show: isCollapsed),
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
      snap: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(background: _BackgroundImages()),
      systemOverlayStyle: systemOverlayStyle,
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({required this.show});

  final bool show;

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
            'Вкусно и точка',
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
  const _BackgroundImages();

  @override
  State<_BackgroundImages> createState() => _BackgroundImagesState();
}

class _BackgroundImagesState extends State<_BackgroundImages> {
  final pageContoller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Hero(
      tag: 'establishment-image',
      child: SizedBox(
        height: 220,
        child: Stack(
          children: [
            PageView(
              controller: pageContoller,
              children: List.generate(
                4,
                (index) => Image.asset(
                  'assets/placeholder/restaurant.jpg',
                  fit: BoxFit.cover,
                ),
              ),
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
                margin: const EdgeInsets.only(bottom: 32),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: theme.custom.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: SmoothPageIndicator(
                  controller: pageContoller,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    expansionFactor: 2.5,
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: theme.custom.opacityForeground,
                    activeDotColor: theme.custom.primaryColor,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color: theme.custom.primaryBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
