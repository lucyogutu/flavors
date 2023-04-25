import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  AppConfig({
    required this.appDisplayName,
    required this.appInternalId,
    required Widget child,
    required this.stringResource,
  }) : super(child: child);

  final String appDisplayName;
  final int appInternalId;
  final StringResource stringResource;

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}

abstract class StringResource {
  String APP_DESCRIPTION = '';
}
