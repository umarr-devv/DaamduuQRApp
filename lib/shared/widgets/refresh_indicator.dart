import 'package:app/shared/widgets/loading_screen.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class CustomScreenRefreshIndicator extends StatefulWidget {
  const CustomScreenRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  final Future Function() onRefresh;
  final Widget child;

  @override
  State<CustomScreenRefreshIndicator> createState() =>
      _CustomScreenRefreshIndicatorState();
}

class _CustomScreenRefreshIndicatorState
    extends State<CustomScreenRefreshIndicator> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () async {
        setState(() {
          loading = true;
        });
        await Future.delayed(Duration(milliseconds: 750));
        await widget.onRefresh();
        setState(() {
          loading = false;
        });
      },
      builder: (context, child, controller) {
        return CustomLoadingScreen(loading: loading, child: child);
      },
      child: widget.child,
    );
  }
}
