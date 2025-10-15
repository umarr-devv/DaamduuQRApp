import 'package:app/features/home/bloc/home/home_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/establishment_type.dart';
import 'package:app/utils/undefined.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeFilter extends StatefulWidget {
  const HomeFilter({super.key});

  @override
  State<HomeFilter> createState() => _HomeFilterState();
}

class _HomeFilterState extends State<HomeFilter> {
  void onTap(EstablishmentType? type) {
    BlocProvider.of<HomeCubit>(context).setType(type ?? undefined);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            spacing: 8,
            children:
                [
                  _FilterItem(
                    type: null,
                    onTap: onTap,
                    currentType: state.type,
                  ),
                ] +
                EstablishmentType.values
                    .map(
                      (i) => _FilterItem(
                        type: i,
                        onTap: onTap,
                        currentType: state.type,
                      ),
                    )
                    .toList(),
          ),
        );
      },
    );
  }
}

class _FilterItem extends StatefulWidget {
  const _FilterItem({
    required this.type,
    required this.onTap,
    required this.currentType,
  });

  final EstablishmentType? type;
  final void Function(EstablishmentType?) onTap;
  final EstablishmentType? currentType;

  @override
  State<_FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<_FilterItem> {
  bool get active => widget.currentType == widget.type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.type);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 175),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: active
              ? theme.custom.primaryColor
              : theme.custom.primaryBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: CustomEstablishmentType(
          type: widget.type,
          color: active ? theme.custom.white : theme.custom.secondaryForeground,
        ),
      ),
    );
  }
}
