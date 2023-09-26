import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:async';

import '../lang_cash_helper.dart';
import '../theme_cash_helper.dart';

part 'states.dart';

class CashCubit extends Cubit<cashState> {
  CashCubit() : super(cashInitial()); //

  Future<void> getSavedLanguage() async {
    final String cachedLanguageCode =
        LanguageCacheHelper().getCachedLanguageCode();

    emit(ChangeLocaleState(locale: Locale(cachedLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await LanguageCacheHelper().cacheLanguageCode(languageCode);
    emit(ChangeLocaleState(locale: Locale(languageCode)));
  }

  int? themeindex;
  Future<void> getSavedTheme() async {
    themeindex = ThemeCacheHelper().getCachedThemeindex();
    print('============ ');
    print(themeindex.toString());
    emit(ChangeThemeState(themeindex: themeindex));
  }

  Future<void> changetheme(int themeindex) async {
    await ThemeCacheHelper().cacheThemeindex(themeindex);
    emit(ChangeThemeState(themeindex: themeindex));
  }
}
