import 'package:flavors/main.dart';
import 'package:flavors/models/app_config.dart';
import 'package:flavors/value_objects/strings_app2.dart';
import 'package:flutter/material.dart';

/// To run the dev environment use the following command: `flutter run --flavor app2 -t lib/bin/main_dev.dart`
void main() {
  var configuredApp = AppConfig(
    appDisplayName: "App 2",
    appInternalId: 2,
    stringResource: StringResourceApp2(),
    child: const MyApp(
      primaryColor: Colors.amber,
    ),
  );

  runApp(configuredApp);
}