import 'package:flutter/material.dart';
import 'package:working_hive/working_hive.dart';

void main() {
  runApp(MyApp());
}

var hive = WorkingHive();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  hive.initPath = 'what ever your path is';
                  await hive.initiateHive();
                },
                child: Text('Init Hive')),
            ElevatedButton(
                onPressed: () async {
                  hive.writeHive('testKey', 'testData');
                },
                child: Text('Write Hive')),
            ElevatedButton(
                onPressed: () async {
                  await hive.readHive('testKey');
                },
                child: Text('Read Hive')),
          ],
        ),
      ),
    );
  }
}
