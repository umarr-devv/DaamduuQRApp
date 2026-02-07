import 'package:app/features/home/blocs/home_tops/home_tops_cubit.dart';
import 'package:app/shared/shared.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopEstablishmentsList extends StatefulWidget {
  const TopEstablishmentsList({super.key});

  @override
  State<TopEstablishmentsList> createState() => _TopEstablishmentsListState();
}

class _TopEstablishmentsListState extends State<TopEstablishmentsList> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        spacing: 12,
        children: [_Title(), _Categories(), _Carousel()],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text('Лучшие заведения', style: theme.custom.label),
    );
  }
}

class _Categories extends StatelessWidget {
  _Categories();

  final establishmentType = ValueNotifier<EstablishmentType?>(null);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ValueListenableBuilder(
        valueListenable: establishmentType,
        builder: (context, value, child) {
          return Row(
            children:
                [_CategoriesItem(null, establishmentType: establishmentType)] +
                EstablishmentType.values.map((type) {
                  return _CategoriesItem(
                    type,
                    establishmentType: establishmentType,
                  );
                }).toList(),
          );
        },
      ),
    );
  }
}

class _CategoriesItem extends StatelessWidget {
  const _CategoriesItem(this.type, {required this.establishmentType});

  final EstablishmentType? type;
  final ValueNotifier<EstablishmentType?> establishmentType;

  bool get active => establishmentType.value == type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        if (establishmentType.value != type) {
          establishmentType.value = type;
          BlocProvider.of<HomeTopsCubit>(context).update(type: type);
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 125),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: active ? theme.custom.secondary : theme.custom.background,
          borderRadius: BorderRadius.circular(32),
        ),
        child: CustomEstablishmentType(
          type: type,
          color: active ? theme.custom.onSecondary : theme.custom.foreground,
        ),
      ),
    );
  }
}

class _Carousel extends StatefulWidget {
  const _Carousel();

  @override
  State<_Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel> {
  final currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTopsCubit, HomeTopsState>(
      bloc: BlocProvider.of<HomeTopsCubit>(context),
      builder: (context, state) {
        if (state.establishments.isEmpty) {
          return SizedBox();
        }
        return Column(
          spacing: 12,
          children: [
            CarouselSlider(
              items: state.establishments
                  .map(
                    (establishment) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: EstablishmentCard(establishment: establishment),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 190,
                viewportFraction: 0.65,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                pauseAutoPlayInFiniteScroll: true,
                pauseAutoPlayOnManualNavigate: true,
                pauseAutoPlayOnTouch: true,
                onPageChanged: (index, reason) {
                  currentIndex.value = index;
                },
              ),
            ),
            ValueListenableBuilder(
              valueListenable: currentIndex,
              builder: (context, value, child) {
                return CustomAnimationIndicator(
                  currentIndex: value,
                  length: state.establishments.length,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
