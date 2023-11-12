import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'app_localizations.dart';
import 'app_localizations_delgate.dart';


class AppLocalizationSetup {
  /* app uses two languages english and arabic */
  static const String enLanguage = 'en';
  static const String arLanguage = 'ar';
  static const String enRegion = 'US';
  static const String arRegion = 'EG';
  static const Locale enLocale = Locale(enLanguage, enRegion);
  static const Locale arLocale = Locale(arLanguage, arRegion);
  static List<Locale> localesList = [enLocale, arLocale];
  static String path = 'assets/translations';
  static const Iterable<Locale> supportedLocales = [enLocale, arLocale];

  static Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    AppLocalizations.delegate,
    // GlobalMaterialLocalizations.delegate,
    // GlobalWidgetsLocalizations.delegate,
    // GlobalCupertinoLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate
  ];

  static Locale? localeResolutionCallback(Locale? locale, Iterable<Locale>? supportedLocales) {
    for (Locale supportedLocale in supportedLocales!) {
      if (supportedLocale.languageCode == locale!.languageCode && supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }
}
