import 'package:app/features/notifications/widgets/widgets.dart';
import 'package:app/shared/theme/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.custom.background,
      body: CustomScrollView(slivers: [NotificationAppBar()]),
    );
  }
}
