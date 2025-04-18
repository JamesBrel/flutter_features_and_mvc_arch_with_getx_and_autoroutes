part of '../screens/welcome_screen.dart';

class _InfoWidget extends StatelessWidget {
  final String notice;

  const _InfoWidget({
    required this.notice,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      notice,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(fontSize: 14.0.st(context)),
      textAlign: TextAlign.center,
    );
  }
}
