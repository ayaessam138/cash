import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_setting_cubit.dart';

class ToggleButtonsSample extends StatelessWidget {
  final String title;

  bool vertical = false;

  ToggleButtonsSample({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final List<Widget> themesnames = [
      // TextButton(
      //     onPressed: () {
      //       BlocProvider.of<CashCubit>(context).changetheme(
      //           BlocProvider.of<AppSettingCubit>(context).themindex);
      //     },
      //     child: Text('purpleBrown')),
      // TextButton(
      //     onPressed: () {
      //       BlocProvider.of<CashCubit>(context).changetheme(
      //           BlocProvider.of<AppSettingCubit>(context).themindex);
      //     },
      //     child: Text('mandyRed')),
      // TextButton(
      //     onPressed: () {
      //       BlocProvider.of<CashCubit>(context).changetheme(
      //           BlocProvider.of<AppSettingCubit>(context).themindex);
      //     },
      //     child: Text('flutterDash')),
      // TextButton(
      //     onPressed: () {
      //       BlocProvider.of<CashCubit>(context).changetheme(
      //           BlocProvider.of<AppSettingCubit>(context).themindex);
      //     },
      //     child: Text('deepOrangeM3')),
      Text('s'), Text('s'), Text('s'),
      Text('s'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: BlocBuilder<AppSettingCubit, AppSettingState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: Text('data'),
                  ),
                  Text('Single-select', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 5),
                  ToggleButtons(
                    direction: vertical ? Axis.vertical : Axis.horizontal,
                    onPressed: (int index) {
                      BlocProvider.of<AppSettingCubit>(context)
                          .changeSelectedtheme(index);
                      // BlocProvider.of<CashCubit>(context).changetheme(
                      //     BlocProvider.of<AppSettingCubit>(context).themindex);
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.red[700],
                    selectedColor: Colors.white,
                    fillColor: Colors.red[200],
                    color: Colors.red[400],
                    constraints: const BoxConstraints(
                      minHeight: 40.0,
                      minWidth: 80.0,
                    ),
                    isSelected: BlocProvider.of<AppSettingCubit>(context)
                        .selecteedTheme,
                    children: themesnames,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ToggleButtonsSample2 extends StatelessWidget {
  final String title;

  bool vertical = false;

  ToggleButtonsSample2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final List<Widget> langnames = [
      TextButton(
          onPressed: () {
            BlocProvider.of<CashCubit>(context).changeLanguage('en');
          },
          child: Text('english')),
      TextButton(
          onPressed: () {
            BlocProvider.of<CashCubit>(context).changeLanguage('ar');
          },
          child: Text('Arabic'))
    ];

    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: Center(
        child: BlocBuilder<AppSettingCubit, AppSettingState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('title', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 5),
                  ToggleButtons(
                      direction: vertical ? Axis.vertical : Axis.horizontal,
                      onPressed: (int index) {
                        BlocProvider.of<AppSettingCubit>(context)
                            .changeSelectedtlang(index);
                      },
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      selectedBorderColor: Colors.red[700],
                      selectedColor: Colors.white,
                      fillColor: Colors.red[200],
                      color: Colors.red[400],
                      constraints: const BoxConstraints(
                        minHeight: 40.0,
                        minWidth: 80.0,
                      ),
                      isSelected: BlocProvider.of<AppSettingCubit>(context)
                          .selecteedlang,
                      children: langnames),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ToggleButtonsSample3 extends StatelessWidget {
  final String title;

  bool vertical = false;

  ToggleButtonsSample3({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final List<Widget> modethemenames = [
      TextButton(
          onPressed: () {
            BlocProvider.of<CashCubit>(context).changetheme(
                BlocProvider.of<AppSettingCubit>(context).modethemendex);
          },
          child: Text('Dark')),
      TextButton(
          onPressed: () {
            BlocProvider.of<CashCubit>(context).changetheme(
                BlocProvider.of<AppSettingCubit>(context).modethemendex);
          },
          child: Text('Light')),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: BlocBuilder<AppSettingCubit, AppSettingState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('title', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 5),
                  ToggleButtons(
                    direction: vertical ? Axis.vertical : Axis.horizontal,
                    onPressed: (int index) {
                      BlocProvider.of<AppSettingCubit>(context)
                          .changeSelectedModeTheme(index);
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.red[700],
                    selectedColor: Colors.white,
                    fillColor: Colors.red[200],
                    color: Colors.red[400],
                    constraints: const BoxConstraints(
                      minHeight: 40.0,
                      minWidth: 80.0,
                    ),
                    isSelected: BlocProvider.of<AppSettingCubit>(context)
                        .modethemeSelected,
                    children: modethemenames,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
