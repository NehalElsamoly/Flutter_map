import 'dart:js';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/tadreeb/core/ulits/apiservice.dart';
import 'package:map/tadreeb/featured/presentation/manager/monthes_cubit.dart';
import 'package:map/tadreeb/featured/presentation/widgets/appbar4.dart';
import 'package:map/tadreeb/featured/presentation/widgets/bottombar.dart';

import 'core/global/theme/themedata/themedata.dart';
import 'core/global/theme/themedata/themedatalight.dart';
import 'mode/controller/modecubit_cubit.dart';
import 'mode/shared/local/sharedpref.dart';

void main() async {
  await CacheHelper.init();
  bool? isDark = CacheHelper.getBoolean(key: 'isDark');

  Dio dio = Dio();
  Apiservice apiService = Apiservice(dio: dio);
  MonthesCubit monthesCubit = MonthesCubit( apiService: apiService);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<MonthesCubit>.value(value: monthesCubit),
        BlocProvider<ModecubitCubit>(
          create: (context) => ModecubitCubit()..changeAppMode(fromShared: isDark),
        ),
      ],
      child: MyApp(isDark ?? true, monthesCubit: monthesCubit,),
    ),
  );
}
class MyApp extends StatelessWidget {
  final bool isDark;
  final MonthesCubit monthesCubit;

  MyApp(this.isDark, {required this.monthesCubit});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: getThemeDataLight(),
      darkTheme: getThemeDataDark(),
      themeMode: ModecubitCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
      home: Screen77(),
    );
  }
}
