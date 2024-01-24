import 'package:flavors/models/app_config.dart';
import 'package:flavors/value_objects/strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config!.appDisplayName),
      ),
      body: Container(
          margin: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                config.appDisplayName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                DATE + getDateForDisplay(),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(config.stringResource.APP_DESCRIPTION),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/dancing.png',
                width: 100.0,
                height: 100.0,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/${config.appInternalId}.png',
                width: 100.0,
                height: 100.0,
              ),
            ],
          )),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
}
