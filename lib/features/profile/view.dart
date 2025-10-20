import 'package:app/features/profile/widgets/widgets.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ProfileAppBar(),
        SliverToBoxAdapter(child: ProfileInfo()),
        SliverToBoxAdapter(child: ProfileError()),
        SliverToBoxAdapter(child: ProfileActions()),
        SliverToBoxAdapter(child: ProfileInvite()),
        SliverToBoxAdapter(child: ProfileContacts()),
        SliverToBoxAdapter(child: NavBarSpace()),
      ],
    );
  }
}
