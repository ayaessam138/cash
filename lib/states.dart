part of 'cubit.dart';

abstract class cashState {}

class cashInitial extends cashState {}

class ChangeLocaleState extends cashState {
  final Locale locale;
  ChangeLocaleState({
    required this.locale,
  });
}

class ChangeThemeState extends cashState {
  final int? themeindex;
  ChangeThemeState({
    required this.themeindex,
  });
}
