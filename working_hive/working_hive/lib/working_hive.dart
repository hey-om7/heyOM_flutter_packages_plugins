library working_hive;

import 'package:hive/hive.dart';
import 'dart:async';

class WorkingHive {
  String initPath = '';
  String boxName = '';
  Future initiateHive() async {
    try {
      if (initPath.length == 0) {
        print('Please add an initPath value in order to initated');
      } else {
        Hive.init(initPath);
      }
    } catch (e) {
      print('error initiating' + e.toString());
    }
  }

  Future writeHive(key, data) async {
    var box = await Hive.openBox(boxName);
    box.put(key, data);
    print('successfully saved data:$data for key:$key');
  }

  Future readHive(key) async {
    var box = await Hive.openBox(boxName);
    return box.get(key);
  }

  Future deleteHive(key) async {
    var box = await Hive.openBox(boxName);
    try {
      box.delete(key).then((value) => print('deleted value from key: $key'));
    } catch (e) {
      print('working hive plugin error: ' + e.toString());
    }
  }
}
