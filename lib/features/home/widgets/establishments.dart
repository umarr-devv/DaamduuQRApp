import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeEstablishments extends StatefulWidget {
  const HomeEstablishments({super.key});

  @override
  State<HomeEstablishments> createState() => _HomeEstablishmentsState();
}

class _HomeEstablishmentsState extends State<HomeEstablishments> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        return Column(
          spacing: 8,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 240,
                viewportFraction: 0.75,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                pauseAutoPlayInFiniteScroll: true,
                pauseAutoPlayOnManualNavigate: true,
                pauseAutoPlayOnTouch: true,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: state.establishments
                  .map((i) => EstablishmentCard(establishment: i))
                  .toList(),
            ),
            CustomAnimationIndicator(
              currentIndex: currentIndex,
              length: state.establishments.length,
            ),
          ],
        );
      },
    );
  }
}
