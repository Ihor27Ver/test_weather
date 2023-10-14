import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

/*
* Example of .env file
*
* APIKEY1=demo
* APIKEY2=demo
*
*/

class AppService {

  //Change if not need to check for root or jail brake
  final _secureFromJailbreak = true;

  Future<bool> initialize() async {
    if (_secureFromJailbreak && !kIsWeb) {
      final isJailBroken = await FlutterJailbreakDetection.jailbroken;
      if (isJailBroken) {
        return false;
      }
    }

    await dotenv.load(fileName: '.env');
    return true;
  }

  String getEnvironmentVariable(String key) => dotenv.env[key] ?? '';
}
