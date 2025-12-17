import 'package:app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.retry});

  final void Function()? retry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/svg/face-sad-sweat.svg",
              height: 128,
              width: 128,
              colorFilter: ColorFilter.mode(
                theme.custom.foreground,
                BlendMode.srcIn,
              ),
            ),
            Text(
              'Нет соединения с сетью',
              textAlign: TextAlign.center,
              style: theme.custom.label,
            ),
            Text(
              'Проверьте соединение с сетью или же попробуйте чуть позже',
              textAlign: TextAlign.center,
              style: theme.custom.label,
            ),
            const SizedBox(height: 12),
            if (retry != null)
              SizedBox(height: 48, width: double.infinity, child: Container()),
          ],
        ),
      ),
    );
  }
}
