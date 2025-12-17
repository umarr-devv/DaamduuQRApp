import 'package:app/features/establishment/bloc/establishment/establishment_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstablishmentContacts extends StatelessWidget {
  const EstablishmentContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<EstablishmentCubit, EstablishmentState>(
      bloc: BlocProvider.of<EstablishmentCubit>(context),
      builder: (context, state) {
        if (state.detail == null) {
          return SizedBox();
        }
        return Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Контакты', style: theme.custom.label),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: state.detail!.contacts
                    .map((i) => CustomContactText(contact: i))
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
