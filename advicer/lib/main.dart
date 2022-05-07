import 'package:advicer/application/advicer/advicer_bloc.dart';
import 'package:advicer/injection.dart';
import 'package:advicer/presetation/advicer/widgets/advicer_page.dart';
import 'package:advicer/presetation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection.dart' as di; //di == dependency injection

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      title: 'Advicer',
      home: BlocProvider(
          create: (BuildContext context) => sl<AdvicerNewBloc>(),
          child: AdvicerPage()),
    );
  }
}
