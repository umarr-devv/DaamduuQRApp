import 'package:app/blocs/auth/auth_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: BlocProvider.of<AuthCubit>(context),
      builder: (context, state) {
        if (state.customer != null) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.custom.background,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              spacing: 12,
              children: [
                _UserAvatar(state),
                Expanded(child: _UserInfo(state)),
                IconButton(
                  icon: Icon(Icons.chevron_right_rounded),
                  onPressed: () {},
                ),
              ],
            ),
          );
        } else {
          return _SignInButton();
        }
      },
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: FilledButton(
        child: Text('Войти'),
        onPressed: () {
          AuthDialog().show(context);
        },
      ),
    );
  }
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar(this.state);

  final AuthState state;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(64),
      child: SizedBox(
        height: 48,
        width: 48,
        child: CustomImage(url: state.firebasePhotoUrl),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo(this.state);

  final AuthState state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          state.firebaseDisplayName ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.custom.label,
        ),
        Text(
          state.firebaseEmail ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.custom.subtitle,
        ),
      ],
    );
  }
}
