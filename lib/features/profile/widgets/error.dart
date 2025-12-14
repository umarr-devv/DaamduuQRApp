import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileError extends StatelessWidget {
  const ProfileError({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<PermissionCubit>(context);
    return BlocBuilder<PermissionCubit, PermissionState>(
      bloc: cubit,
      builder: (context, state) {
        if (state.camera.isGranted &&
            state.location.isGranted &&
            state.notification.isGranted) {
          return SizedBox();
        }
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
  
            borderRadius: BorderRadius.circular(16),
            border: Border.all( width: 1),
          ),
          child: Column(
            spacing: 6,
            children: [
              if (!state.camera.isGranted)
                _ErrorItem(
                  text: 'Камера',
                  onFix: () {
                    cubit.request(Permission.camera);
                  },
                ),
              if (!state.location.isGranted)
                _ErrorItem(
                  text: 'Локация',
                  onFix: () {
                    cubit.request(Permission.location);
                  },
                ),
              if (!state.notification.isGranted)
                _ErrorItem(
                  text: 'Уведомления',
                  onFix: () {
                    cubit.request(Permission.notification);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

class _ErrorItem extends StatelessWidget {
  const _ErrorItem({required this.text, required this.onFix});

  final String text;
  final void Function() onFix;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 4,
      children: [
        Icon(Icons.warning_amber_rounded, size: 24),
        Expanded(
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.custom.labelTextStyle.copyWith(
          
            ),
          ),
        ),
        SizedBox(
          height: 32,
          child: CustomTextButton(
            label: 'Исправить',
            padding: const EdgeInsets.symmetric(horizontal: 8),
            shadow: false,
            radius: 8,
            onTap: onFix,
          ),
        ),
      ],
    );
  }
}
