import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/app_setting_cubit.dart';
import 'package:flutter_application_1/cubit.dart';
import 'package:flutter_application_1/lang_cash_helper.dart';
import 'package:flutter_application_1/theme_cash_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await LanguageCacheHelper.init();
  await ThemeCacheHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      startLocale: Locale('en'),
      fallbackLocale: Locale('en'),
      useOnlyLangCode: true,
      path: 'assets/traslations',
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CashCubit()),

        BlocProvider(
          create: (context) => AppSettingCubit(),
        )
        // , BlocProvider(
        //   create: (context) => ThemeCubit(),
        // )
      ],
      child: BlocBuilder<AppSettingCubit, AppSettingState>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: Locale(BlocProvider.of<AppSettingCubit>(context).languages[
                BlocProvider.of<AppSettingCubit>(context).langindex]),
            title: 'Flutter Demo',
            theme: BlocProvider.of<AppSettingCubit>(context).themeslight[
                ThemeCacheHelper()
                    .getCachedThemeindex()], // The Mandy red, dark theme.

            darkTheme: BlocProvider.of<AppSettingCubit>(context).themesDark[
                BlocProvider.of<AppSettingCubit>(context).themindex],

            // FlexThemeData.dark(scheme: FlexScheme.mandyRed),
            //themeMode:

            //  BlocProvider.of<AppSettingCubit>(context).modestheme[
            //     BlocProvider.of<AppSettingCubit>(context).modethemendex],

            home: Home(),
          );
        },
      ),
    );
  }
}
