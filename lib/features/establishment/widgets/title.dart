import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/utils/geo.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
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
            top: 2,
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
      return IconButton(
        onPressed: () async {
          await openGeo(
            latitude: establishment.latitude!.toDouble(),
            longitude: establishment.longitude!.toDouble(),
          );
        },
        style: IconButton.styleFrom(
          backgroundColor: theme.custom.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(64),
          ),
        ),
        icon: Icon(
          FluentIcons.directions_24_filled,
          color: theme.custom.onPrimary,
        ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(establishment.name, style: theme.custom.title),
        Text(establishment.address, style: theme.custom.subtitle),
      ],
    );
  }
}
