/*
 * Jesseframework - Computer Expertz Ltd - https://cpxz.us
 * Copyright (C) 2019-2021 Jesseframework
 *
 * This file is part of Jesseframework - https://github.com/jesseframework/j3.
 *
 * Jesseframework is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version. 
 *
 * Jesseframework is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 */

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalization {
final locale;
  AppLocalization(this.locale);

  static const LocalizationsDelegate<AppLocalization> delegate =
      AppLocalizationDelegate();

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  // This method will be called from every widget which needs a localized text
  String translate(String key) {
    return _localizedStrings[key];
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es', 'sk'].contains(locale.languageCode);
  }

  // @override
  // Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  Future<AppLocalization> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    AppLocalization localizations = new AppLocalization(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}
