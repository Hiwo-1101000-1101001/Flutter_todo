import "package:flutter/material.dart";
import 'package:flutter_app/const.dart'; // Const

// Pages
import 'package:flutter_app/screens/main_screen.dart'; // HomePage
import 'package:flutter_app/screens/todo_detail_screen.dart'; // DetalScreen 

// DataBase
import 'dart:async';

import 'package:path/path.dart'; // файлы на диске
import 'package:sqflite/sqflite.dart'; // Для sqlite db
import 'package:flutter/widgets.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'doggie_database.db'),
  );
  
  runApp(App());
}

// Главный класс в котором лежит приложение
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      initialRoute: '/',
      routes: {
        // Главный экран
        '/': (context) => const MainScreen(),
        // Страница детальной информации о задачах
        '/detail': (context) => const DetailScreen()
      },
      theme: ThemeData(
        // цвет фона
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        // шрифт из файла pubspec.yaml
        fontFamily: FONT_FAMILY,
      ),
    );
  }
}
