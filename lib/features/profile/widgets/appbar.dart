import 'package:app/blocs/auth/auth_cubit.dart';
import 'package:app/core/router/router.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AuthCubit>(context);
    final theme = Theme.of(context);
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: cubit,
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: theme.custom.muted,
          pinned: true,
          shadowColor: theme.custom.shadow,
          automaticallyImplyLeading: false,
          title: Text('Мой Профиль'),
          actions: [
            CustomIconButton(
              icon: Icons.settings,
              radius: 12,
              onTap: () {
                AutoRouter.of(context).push(SettingsRoute());
              },
            ),
            if (state.customer != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CustomIconButton(
                  icon: Icons.exit_to_app_rounded,
                  radius: 12,
                  onTap: () {
                    cubit.signOut();
                  },
                ),
              ),
            SizedBox(width: 16),
          ],
        );
      },
    );
  }
}
