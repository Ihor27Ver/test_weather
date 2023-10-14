import 'package:flutter/material.dart';

class KeyboardUtil {
  static void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
