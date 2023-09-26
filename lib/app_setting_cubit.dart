import 'package:bloc/bloc.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme_cash_helper.dart';
import 'package:meta/meta.dart';

part 'app_setting_state.dart';

class AppSettingCubit extends Cubit<AppSettingState> {
  AppSettingCubit() : super(AppSettingInitial());
  // theme change

  int themindex = 0;
  final List<ThemeData> themeslight = [
    FlexThemeData.light(scheme: FlexScheme.purpleBrown),
    FlexThemeData.light(scheme: FlexScheme.mandyRed),
    FlexThemeData.light(scheme: FlexScheme.flutterDash),
    FlexThemeData.light(scheme: FlexScheme.deepOrangeM3)
  ];

  final List<ThemeData> themesDark = [
    FlexThemeData.dark(scheme: FlexScheme.purpleBrown),
    FlexThemeData.dark(scheme: FlexScheme.mandyRed),
    FlexThemeData.dark(scheme: FlexScheme.flutterDash),
    FlexThemeData.dark(scheme: FlexScheme.deepOrangeM3)
  ];
  final List<bool> selecteedTheme = <bool>[true, false, false, false];

  final List<Widget> themesnames = [
    Text('purpleBrown'),
    Text('mandyRed'),
    Text('flutterDash'),
    Text('deepOrangeM3')
  ];

  changeSelectedtheme(int newindex) async {
    emit(ThemeModeChagedStart());
    for (int index = 0; index < selecteedTheme.length; index++) {
      if (index == newindex) {
        selecteedTheme[index] = true;
      } else {
        selecteedTheme[index] = false;
      }
    }

    themindex = newindex;
    await ThemeCacheHelper().cacheThemeindex(themindex);
    emit(ThemeModeChagedEnd());
  }
  // lang chnage

  int langindex = 0;
  final List<String> languages = ['en', 'ar'];
  final List<bool> selecteedlang = <bool>[true, false];
  // final List<Widget> langnames = [
  //
  //   Text('english'),
  //   Text('arabic'),
  // ];

  changeSelectedtlang(int newindex) {
    emit(LangSelectedStart());
    for (int index = 0; index < selecteedlang.length; index++) {
      if (index == newindex) {
        selecteedlang[index] = true;
      } else {
        selecteedlang[index] = false;
      }
    }

    langindex = newindex;
    emit(LangSelectedEnd());
  }

// thememode

  int modethemendex = 0;
  final List<ThemeMode> modestheme = [ThemeMode.dark, ThemeMode.light];
  final List<bool> modethemeSelected = <bool>[true, false];
  // final List<Widget> modethemenames = [
  //   Text('Dark'),
  //   Text('Light'),
  // ];

  changeSelectedModeTheme(int newindex) {
    emit(modetemeselectedStart());
    for (int index = 0; index < modethemeSelected.length; index++) {
      if (index == newindex) {
        modethemeSelected[index] = true;
      } else {
        modethemeSelected[index] = false;
      }
    }

    modethemendex = newindex;
    emit(modetemeselectedEnd());
  }
}
