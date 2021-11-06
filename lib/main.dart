import "package:flutter/material.dart";
import 'package:flutter_app/const.dart'; // Const

// Pages
import 'package:flutter_app/screens/main_screen.dart';
import 'package:flutter_app/screens/todo_detail_screen.dart'; // HomePage

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo app",
      initialRoute: '/',
      routes: {
        // Главный экран
        '/': (context) => const MainScreen(),
        // Страница детальной информации о задачах
        '/detail': (context) => const DetailScreen()
      },
      theme: ThemeData(
        // Назначил цвет фона
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        // Назначил шрифт из файла pubspec.yaml
        fontFamily: FONT_FAMILY,
      ),
    );
  }
}
