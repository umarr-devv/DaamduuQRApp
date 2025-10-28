import 'package:app/blocs/auth/auth_cubit.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  bool isCollapsed = false;

  void scrollListener() {
    if (widget.scrollController.offset > 12) {
      if (!isCollapsed) {
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset < 12) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<AuthCubit>(context);
    final theme = Theme.of(context);
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: cubit,
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: isCollapsed
              ? theme.custom.primaryBackground
              : theme.custom.secondaryBackground,
          pinned: true,
          shadowColor: theme.custom.highShadowColor,
          automaticallyImplyLeading: false,
          title: _AppBarTitle(),
          actions: [
            CustomIconButton(
              icon: Icons.settings,
              shadow: !isCollapsed,
              radius: 12,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        TalkerScreen(talker: GetIt.I<Talker>()),
                  ),
                );
              },
            ),
            if (state.customer != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CustomIconButton(
                  icon: Icons.exit_to_app_rounded,
                  shadow: !isCollapsed,
                  foreground: theme.custom.warning,
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

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      spacing: 8,
      children: [
        Text(
          'Мой профиль',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: theme.custom.primaryForeground,
          ),
        ),
      ],
    );
  }
}
