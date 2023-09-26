part of 'app_setting_cubit.dart';

@immutable
abstract class AppSettingState {}

class AppSettingInitial extends AppSettingState {}
class ThemeModeChagedStart  extends AppSettingState {}
class ThemeModeChagedEnd  extends AppSettingState {}
class LangSelectedStart extends AppSettingState {}
class LangSelectedEnd extends AppSettingState {}
class modetemeselectedStart extends AppSettingState {}
class modetemeselectedEnd extends AppSettingState {}