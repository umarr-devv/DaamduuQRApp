import 'package:app/shared/theme/theme.dart';
import 'package:app/shared/widgets/widgets.dart';
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
                theme.custom.primaryForeground,
                BlendMode.srcIn,
              ),
            ),
            Text(
              'Нет соединения с сетью',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: theme.custom.primaryForeground,
              ),
            ),
            Text(
              'Проверьте соединение с сетью или же попробуйте чуть позже',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: theme.custom.secondaryForeground,
              ),
            ),
            const SizedBox(height: 12),
            if (retry != null)
              SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomActionButton(
                  icon: Icons.sync,
                  label: 'Повторить',
                  background: theme.custom.primaryForeground,
                  onTap: retry!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
