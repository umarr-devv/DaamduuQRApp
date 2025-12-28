import 'package:app/blocs/auth/auth_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
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
          title: Text('Профиль'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(FluentIcons.settings_24_filled),
            ),

            if (state.customer != null)
              IconButton(
                onPressed: () {},
                icon: Icon(FluentIcons.sign_out_24_filled),
              ),
            SizedBox(width: 16),
          ],
        );
      },
    );
  }
}
