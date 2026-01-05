import 'package:app/blocs/blocs.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileError extends StatelessWidget {
  const ProfileError({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.custom.error.withValues(alpha: 0.125),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: theme.custom.error),
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
      spacing: 6,
      children: [
        Icon(Icons.warning_amber_rounded, color: theme.custom.foreground),
        Expanded(
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              color: theme.custom.foreground,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(onPressed: onFix, child: Text('Исправить')),
      ],
    );
  }
}
