import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EstablishmentCategoryData {
  EstablishmentCategoryData({required this.svgIcon, required this.label});
  final String svgIcon;
  final String label;
}

class HomeEstablishmentCategories extends StatefulWidget {
  const HomeEstablishmentCategories({super.key});

  @override
  State<HomeEstablishmentCategories> createState() =>
      _HomeEstablishmentCategoriesState();
}

class _HomeEstablishmentCategoriesState
    extends State<HomeEstablishmentCategories> {
  int activeIndex = 0;

  final categories = [
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/restaurant.svg',
      label: 'Рестораны',
    ),
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/hamburger-soda.svg',
      label: 'Фастфуды',
    ),
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/mug-hot-alt.svg',
      label: 'Кафе',
    ),
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/french-fries.svg',
      label: 'Столовые',
    ),
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/croissant.svg',
      label: 'Кондитерские',
    ),
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/glass-cheers.svg',
      label: 'Бары',
    ),
    EstablishmentCategoryData(
      svgIcon: 'assets/svg/cup-straw-swoosh.svg',
      label: 'Кофейни',
    ),
  ];

  void onTap(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        spacing: 8,
        children: categories
            .map(
              (category) => _EstablishmentCategoryItem(
                category: category,
                onTap: onTap,
                activeIndex: activeIndex,
                index: categories.indexOf(category),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _EstablishmentCategoryItem extends StatefulWidget {
  const _EstablishmentCategoryItem({
    required this.category,
    required this.onTap,
    required this.index,
    required this.activeIndex,
  });

  final EstablishmentCategoryData category;
  final Function(int) onTap;
  final int index;
  final int activeIndex;

  @override
  State<_EstablishmentCategoryItem> createState() =>
      _EstablishmentCategoryItemState();
}

class _EstablishmentCategoryItemState
    extends State<_EstablishmentCategoryItem> {
  bool get active => widget.activeIndex == widget.index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 175),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: active
              ? theme.custom.primaryColor
              : theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          spacing: 8,
          children: [
            SvgPicture.asset(
              widget.category.svgIcon,
              height: 18,
              colorFilter: ColorFilter.mode(
                active ? theme.custom.white : theme.custom.secondaryForeground,
                BlendMode.srcIn,
              ),
            ),
            Text(
              widget.category.label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: active
                    ? theme.custom.white
                    : theme.custom.secondaryForeground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
