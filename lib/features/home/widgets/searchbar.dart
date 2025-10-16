import 'package:app/core/router/router.dart';
import 'package:app/shared/widgets/components/components.dart';
import 'package:app/utils/uuid.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  final textController = TextEditingController();
  final String uniqueId = generateUuid();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(
            SearchRoute(textController: textController, uniqueId: uniqueId),
          );
        },
        child: Hero(
          tag: uniqueId,
          child: CustomSearchBar(
            textController: textController,
            enable: false,
            hintText: 'Блюда, закуски, напитки...',
          ),
        ),
      ),
    );
  }
}
