import 'package:app/features/home/widgets/food.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/page_indicator.dart';
import 'package:app/shared/widgets/scrollable_sheet.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key, required this.food});

  final FoodData food;

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollableSheet(
      color: theme.custom.primaryBackground,
      child: Column(
        children: [
          _FoodDetailImage(food: food),
          _FoodDetailTitle(food: food),
          _FoodDetailAdd(),
        ],
      ),
    );
  }
}

class _FoodDetailTitle extends StatelessWidget {
  const _FoodDetailTitle({required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Блюдо',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: theme.custom.secondaryForeground,
                ),
              ),
              Text(
                food.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.primaryForeground,
                ),
              ),
            ],
          ),
          Text(
            food.price.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: theme.custom.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _FoodDetailImage extends StatefulWidget {
  const _FoodDetailImage({required this.food});

  final FoodData food;

  @override
  State<_FoodDetailImage> createState() => _FoodDetailImageState();
}

class _FoodDetailImageState extends State<_FoodDetailImage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: PageView(
              controller: pageController,
              children: List.generate(
                4,
                (index) => Image.asset(widget.food.image, fit: BoxFit.cover),
              ),
            ),
          ),
          CustomPageIndicator(controller: pageController, count: 4),
        ],
      ),
    );
  }
}

class _FoodDetailAdd extends StatelessWidget {
  const _FoodDetailAdd();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomActionButton(
        label: 'Добавить',
        icon: Icons.add,
        onTap: () {},
        background: theme.custom.primaryColor,
      ),
    );
  }
}
