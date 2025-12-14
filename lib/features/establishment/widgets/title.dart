import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:app/utils/geo.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstablishmentTitle extends StatelessWidget {
  const EstablishmentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: BlocProvider.of(context),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(
            top: 8,
            left: 16,
            right: 16,
            bottom: 12,
          ),
          child: Row(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _TitleAndInfo(establishment: state.establishment),
              ),
              _DirectionButton(establishment: state.establishment),
            ],
          ),
        );
      },
    );
  }
}

class _DirectionButton extends StatelessWidget {
  const _DirectionButton({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (establishment.latitude != null && establishment.longitude != null) {
      return CustomIconButton(
        icon: Icons.directions,
        shadow: false,
        onTap: () async {
          await openGeo(
            latitude: establishment.latitude!.toDouble(),
            longitude: establishment.longitude!.toDouble(),
          );
        },
        background: theme.custom.primary,
        foreground: theme.custom.background,
      );
    } else {
      return const SizedBox();
    }
  }
}

class _TitleAndInfo extends StatelessWidget {
  const _TitleAndInfo({required this.establishment});

  final EstablishmentScheme establishment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(establishment.name, style: theme.custom.labelTextStyle),
        Row(
          spacing: 6,
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Text(
              'Открыт до 22:00',
              style: theme.custom.labelTextStyle.copyWith(
              ),
            ),
          ],
        ),
        Text(establishment.address, style: theme.custom.labelTextStyle),
      ],
    );
  }
}
