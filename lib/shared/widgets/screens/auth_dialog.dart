import 'package:app/blocs/auth/auth_cubit.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthDialog extends StatelessWidget {
  const AuthDialog({super.key});

  Future show(BuildContext context) async {
    await CustomScrollableSheet.show(context, this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AuthCubit>(context);
    return CustomScrollableSheet(
      child: Column(
        children: [
          CustomTextButton(
            label: 'Google',
            icon: Icons.login,
            onTap: () {
              cubit.signInWithGoogle();
            },
          ),
          CustomTextButton(
            label: 'Apple ID',
            icon: Icons.login,
            onTap: () {
              cubit.signInWithAppleID();
            },
          ),
          CustomTextButton(
            label: 'Выйти',
            icon: Icons.exit_to_app,
            onTap: () {
              cubit.signOut();
            },
          ),
        ],
      ),
    );
  }
}
