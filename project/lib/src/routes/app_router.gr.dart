// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<WelcomeRouteArgs> {
  WelcomeRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        WelcomeRoute.name,
        args: WelcomeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WelcomeRouteArgs>(
        orElse: () => const WelcomeRouteArgs(),
      );
      return WelcomeScreen(key: args.key);
    },
  );
}

class WelcomeRouteArgs {
  const WelcomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'WelcomeRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WelcomeRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}
