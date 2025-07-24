part of '../screens/welcome_screen.dart';

class _GreetingWidget extends StatelessWidget {
  final String greeting;

  const _GreetingWidget({required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Text(
      greeting,
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,
    );
  }
}
