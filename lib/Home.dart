import 'package:flutter/material.dart';
import 'package:flutter_application_1/CusstomButton.dart';
import 'package:flutter_application_1/ToggleButoonsTheme&lang.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Scaffold(
          body: Row(
            children: [
              Column(
                children: [
                  custombutton(
                    text: 'theme',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ToggleButtonsSample(title: 'theme'),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  custombutton(
                    text: 'Localization',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ToggleButtonsSample2(title: 'Localization'),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  custombutton(
                    text: 'thememode',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ToggleButtonsSample3(title: 'thememode'),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
              // SizedBox(width: 12,),
              // Column(
              //   children: [
              //     custombutton(text: 'StaticChart', ontap: () {
              //       Navigator.push(
              //         context, MaterialPageRoute(builder: (context) =>
              //           StaticChart(),),); },)
              //     , SizedBox(height: 12,)
              //     , custombutton(text: 'Chart Api', ontap: () {
              //       Navigator.push(
              //         context, MaterialPageRoute(builder: (context) =>
              //           ChartApi(),),); },)
              //     , SizedBox(height: 12,)
              //     ,custombutton(text: 'DataGrid', ontap: () {
              //       Navigator.push(
              //         context, MaterialPageRoute(builder: (context) =>
              //           DataGridJson2(
              //             columns: ['permit_content_code','permit_content_descr','remarks'],
              //             url1: 'http://192.168.1.5/ErpAPI/ErpAPI.ashx?op=get_permit_content_list&of=json',),),); },)
              //     , SizedBox(height: 12,),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
// Column(
// children: [
//
// TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// ToggleButtonsSample3(title: 'thememode'),
// ));
// },
// child: Text('thememode'))
// ,TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => ToggleButtonsSample(title: 'theme'),
// ));
// },
// child: Text('theme')),
// TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// ToggleButtonsSample2(title: 'localization'),
// ));
// },
// child: Text('localization'))
//
// ,TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => StaticChart(),
// ));
// },
// child: Text('StaticChart')),
// TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => ChartApi(),
// ));
// },
// child: Text('ChartApi')),
// TextButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => DataGridJson2(columns: [ 'permit_content_code','permit_content_descr','remarks'], url1: 'http://192.168.1.5/ErpAPI/ErpAPI.ashx?op=get_permit_content_list&of=json',),
// ));
// },
// child: Text('DataGrid')),
//
// ],
// )