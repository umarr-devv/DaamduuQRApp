import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:app/utils/geo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstablishmentTitle extends StatelessWidget {
  const EstablishmentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  spacing: 2,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.establishment.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: theme.custom.primaryForeground,
                      ),
                    ),
                    Text(
                      state.establishment.address,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: theme.custom.secondaryForeground,
                      ),
                    ),
                  ],
                ),
              ),
              if (state.establishment.latitude != null &&
                  state.establishment.longitude != null)
                CustomIconButton(
                  icon: Icons.directions,
                  onTap: () async {
                    await openGeo(
                      latitude: state.establishment.latitude!.toDouble(),
                      longitude: state.establishment.longitude!.toDouble(),
                    );
                  },
                  background: theme.custom.primaryColor,
                  foreground: theme.custom.white,
                ),
            ],
          ),
        );
      },
    );
  }
}
