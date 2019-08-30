import 'dart:async';

import 'package:flutter/services.dart';

class Add {
  static const MethodChannel _channel =
      const MethodChannel('add');

  static Future<int> add() async {
    return await _channel.invokeMethod('add');
  }
}
