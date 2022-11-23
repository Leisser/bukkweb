import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _sharedPrefs;

  factory SharedPrefs() => SharedPrefs._internal();

  SharedPrefs._internal();

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  // double? barheght = _sharedPrefs!.getDouble('barheght') ?? 80;
  double? get barheght => _sharedPrefs!.getDouble('barheght') ?? 80;
}

ValueNotifier<bool> seebar = ValueNotifier<bool>(true);
