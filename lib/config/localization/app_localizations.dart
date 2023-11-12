import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localizations_delgate.dart';
import 'app_localizations_setup.dart';
class AppLocalizations {
  late Locale locale;
  static BuildContext? context;
  static late Map<String, String> _localizedStrings;
  AppLocalizations({this.locale = AppLocalizationSetup.enLocale});
  /*this will retrieve for us localizations that match the current context*/
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  } //context here means the current locale which is determined automatically

  Future<void> load() async {
    //String jsonString = await rootBundle.loadString('assets/translations/${locale.languageCode}.json');
    String jsonString = await rootBundle.loadString('assets/translations/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map<String, String>((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  static LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate.instance;
  String? translate(String key) {
    debugPrint("key is ${key} and valu is ${_localizedStrings[key]}");
    return _localizedStrings[key];
  }
  String? t(String key) {
    debugPrint("key is ${key} and valu is ${_localizedStrings[key]}");
    return _localizedStrings[key];
  }
  bool get isEnLocale => locale.languageCode == 'en';

}

