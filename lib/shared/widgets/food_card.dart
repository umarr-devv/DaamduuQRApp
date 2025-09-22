import 'package:app/features/home/widgets/food.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Tilt(
      childLayout: ChildLayout(
        outer: [
          TiltParallax(size: Offset(2, 2), child: _FoodFavoriteButton()),
          TiltParallax(
            size: Offset(2, 2),
            child: _FoodPrice(food: food),
          ),
          TiltParallax(size: Offset(2, 2), child: _FoodCardAddButton()),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: Container(
          decoration: BoxDecoration(color: theme.custom.primaryBackground),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      food.image,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              _FoodCardInfo(food: food),
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodFavoriteButton extends StatefulWidget {
  const _FoodFavoriteButton();

  @override
  State<_FoodFavoriteButton> createState() => _FoodFavoriteButtonState();
}

class _FoodFavoriteButtonState extends State<_FoodFavoriteButton> {
  bool favorite = false;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 36,
        width: 36,
        margin: const EdgeInsets.all(6),
        child: IconButton(
          onPressed: () async {
            setState(() {
              scale = 0.8;
            });
            await Future.delayed(Duration(milliseconds: 125));
            favorite = !favorite;
            setState(() {
              scale = 1;
            });
          },
          style: IconButton.styleFrom(
            backgroundColor: theme.custom.primaryBackground,
          ),
          icon: AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 125),
            child: Icon(
              favorite ? Icons.favorite : Icons.favorite_border_rounded,
              size: 20,
              color: favorite
                  ? theme.custom.primaryColor
                  : theme.custom.secondaryForeground,
            ),
          ),
        ),
      ),
    );
  }
}

class _FoodPrice extends StatelessWidget {
  const _FoodPrice({required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 72, right: 8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: food.price.toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.primaryForeground,
                ),
              ),
              WidgetSpan(child: SizedBox(width: 3)),
              TextSpan(
                text: 'c',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: theme.custom.secondaryForeground,
                  decorationThickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodCardAddButton extends StatelessWidget {
  const _FoodCardAddButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 32,
        width: 32,
        margin: const EdgeInsets.all(8),
        child: IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: theme.custom.primaryForeground,
            shape: CircleBorder(),
            padding: const EdgeInsets.all(0),
          ),
          padding: const EdgeInsets.all(0),
          icon: Icon(Icons.add, size: 20, color: theme.custom.white),
        ),
      ),
    );
  }
}

class _FoodCardInfo extends StatelessWidget {
  const _FoodCardInfo({required this.food});

  final FoodData food;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Блюда',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: theme.custom.secondaryForeground,
                ),
              ),
              Text(
                food.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.custom.primaryForeground,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
