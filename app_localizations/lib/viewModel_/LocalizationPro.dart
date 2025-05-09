import 'package:flutter/material.dart';

class Localizationpro with ChangeNotifier {
  //obsecured toggle password visibility
  bool _isObsecured = true;
  bool get isObsecured => _isObsecured;

  //make a function for obsecured visibility
  void toggleObsecured() {
    _isObsecured = !_isObsecured;
    notifyListeners();
  }


    Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.supportedLocales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = const Locale('en');
    notifyListeners();
  }
}

class L10n {
  static const supportedLocales = [
    Locale('en'),
    Locale('es'),
    Locale('ur'),
    Locale('ps'),
  ];
}
