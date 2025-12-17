import 'package:app/blocs/auth/auth_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AuthDialog extends StatelessWidget {
  const AuthDialog({super.key});

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollableSheet(
      maxChildSize: 0.55,
      initialChildSize: 0.5,
      minChildSize: 0.45,
      closeButton: false,
      actions: [MaybePopButton(close: true)],
      child: BlocConsumer<AuthCubit, AuthState>(
        bloc: BlocProvider.of<AuthCubit>(context),
        listener: (context, state) {
          if (state is AuthSignInLoaded) {
            AutoRouter.of(context).maybePop();
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Opacity(
                opacity: state is AuthSignInLoading ? 0.4 : 1,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _DialogTitle(),
                      SizedBox(height: 24),
                      _DialogButtons(),
                      SizedBox(height: 64),
                      _DialogRules(),
                    ],
                  ),
                ),
              ),
              if (state is AuthSignInLoading) _Progress(),
            ],
          );
        },
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  const _Progress();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(top: 160),
      child: SpinKitRing(color: theme.custom.onMuted),
    );
  }
}

class _DialogRules extends StatelessWidget {
  const _DialogRules();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: theme.custom.label,
        children: [
          TextSpan(text: 'Авторизовываясь в нашей системе, вы принимаете '),
          TextSpan(
            text: 'условия соглашения',
            style: TextStyle(color: theme.custom.onMuted),
          ),
          TextSpan(text: ' и '),
          TextSpan(
            text: 'конфеденциальности',
            style: TextStyle(color: theme.custom.onMuted),
          ),
        ],
      ),
    );
  }
}

class _DialogButtons extends StatelessWidget {
  const _DialogButtons();

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AuthCubit>(context);
    final theme = Theme.of(context);
    return Column(
      spacing: 8,
      children: [
        SizedBox(
          width: double.infinity,
          child: CustomTextButton(
            icon: 'assets/svg/google.svg',
            label: 'Google',
            background: theme.custom.secondary,
            shadow: false,
            radius: 12,
            fontSize: 16,
            colorFilter: false,
            onTap: () {
              cubit.signInWithGoogle();
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: CustomTextButton(
            icon: 'assets/svg/apple.svg',
            label: 'Apple ID',
            background: theme.custom.secondary,
            shadow: false,
            radius: 12,
            fontSize: 16,
            colorFilter: false,
            onTap: () {
              cubit.signInWithAppleID();
            },
          ),
        ),
      ],
    );
  }
}

class _DialogTitle extends StatelessWidget {
  const _DialogTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 6,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.asset('assets/icon/icon.png', height: 32, width: 32),
            ),
            Text('Войти', style: theme.custom.label),
          ],
        ),
        Text('Выберите способ входа', style: theme.custom.label),
      ],
    );
  }
}
