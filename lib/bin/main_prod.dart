import 'package:flavors/main.dart';
import 'package:flavors/models/app_config.dart';
import 'package:flavors/value_objects/strings_app1.dart';
import 'package:flutter/material.dart';

/// To run the dev environment use the following command: `flutter run --flavor app1 -t lib/bin/main_prod.dart`
void main() {
  var configuredApp = AppConfig(
    appDisplayName: "App 1",
    appInternalId: 1,
    stringResource: StringResourceApp1(),
    child: const MyApp(
      primaryColor: Colors.blue,
    ),
  );
 
 
  runApp(configuredApp);
}