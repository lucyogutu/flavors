import 'package:flavors/value_objects/strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flavors"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
        children: <Widget>[
          Text(APP_TITLE),
          Text(DATE + getDateForDisplay()),
          Text(APP_DESCRIPTION),
          Image.asset('assets/dancing.png', width: 50.0, height: 50.0,),
          Image.asset('assets/1.png', width: 50.0, height: 50.0),
        ],
      )
      ),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
  
}