import 'package:flutter/material.dart';
import 'app_localizations.dart';
import 'app_localizations_setup.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  AppLocalizationsDelegate._internal();
  static final AppLocalizationsDelegate instance = AppLocalizationsDelegate._internal();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizationSetup.supportedLocales.contains(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) {
    return false;
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalization = AppLocalizations(locale: locale);
    await appLocalization.load();
    return appLocalization;
  }
}
