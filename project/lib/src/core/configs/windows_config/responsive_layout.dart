import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

enum DeviceType { phone, tablet, desktop, watch }

abstract class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  Widget? phone(BuildContext context) => null;
  Widget? tablet(BuildContext context) => null;
  Widget? desktop(BuildContext context) => null;
  Widget? watch(BuildContext context) => null;

  @override
  Widget build(BuildContext context) {
    final deviceType = _determineDeviceType(context);
    final builders = _getBuildersForDevice(deviceType);

    for (final builder in builders) {
      final widget = builder(context);
      if (widget != null) return widget;
    }

    throw FlutterError(
      'No widget found for $deviceType. '
      'Implement at least one method (phone, tablet, desktop or watch).',
    );
  }

  List<Widget? Function(BuildContext)> _getBuildersForDevice(
    DeviceType deviceType,
  ) {
    switch (deviceType) {
      case DeviceType.phone:
        return [phone, tablet, desktop, watch];
      case DeviceType.tablet:
        return [tablet, desktop, phone, watch];
      case DeviceType.desktop:
        return [desktop, tablet, phone, watch];
      case DeviceType.watch:
        return [watch, phone, tablet, desktop];
    }
  }

  DeviceType _determineDeviceType(BuildContext context) {
    if (_isWatch(context)) return DeviceType.watch;

    final width = MediaQuery.of(context).size.width;

    if (width < 600) return DeviceType.phone;
    if (width < 900) return DeviceType.tablet;
    return DeviceType.desktop;
  }

  bool _isWatch(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final shortestSide = size.shortestSide;

    return shortestSide < 300 &&
        (kIsWeb ? false : Platform.isIOS || Platform.isAndroid);
  }
}
