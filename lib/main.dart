import "package:flutter/material.dart";
import 'package:flutter_app/const.dart'; // Const

// Pages
import 'package:flutter_app/screens/main_screen.dart'; // HomePage
import 'package:flutter_app/screens/create_task.dart'; // DetalScreen


void main() async {  
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
        '/create': (context) => const CreateScreen()
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
