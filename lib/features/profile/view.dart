import 'package:app/features/profile/widgets/widgets.dart';
import 'package:app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        ProfileAppBar(scrollController: scrollController),
        SliverToBoxAdapter(child: ProfileInfo()),
        SliverToBoxAdapter(child: ProfileError()),
        SliverToBoxAdapter(child: ProfileActions()),
        SliverToBoxAdapter(child: ProfileInvite()),
        SliverToBoxAdapter(child: ProfileContacts()),
        SliverToBoxAdapter(child: ProfileAppInfo()),
        SliverToBoxAdapter(child: NavBarSpace()),
      ],
    );
  }
}
