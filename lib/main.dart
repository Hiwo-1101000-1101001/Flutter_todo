import "package:flutter/material.dart";
import 'const.dart'; // Const
// Widgets
import 'package:flutter_app/widgets/buttonsheet_button_widget.dart';
import 'widgets/card_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            // Назначил цвет фона
            scaffoldBackgroundColor: BACKGROUND_COLOR,
            // Назначил шрифт из файла pubspec.yaml
            fontFamily: FONT_FAMILY),
        home: Scaffold(
          // Создал AppBar
          appBar: AppBar(
            backgroundColor: BACKGROUND_COLOR, // Цвет у AppBar
            elevation: 0, // Убрал дефолтную тень у AppBar
            title: Container(
              // Внешние отступы сверху и снизу у AppBar
              margin: const EdgeInsets.only(
                top: 25.0,
                bottom: 25.0,
              ),
              child: Center(
                // Это для центровки
                // Ставлю логотип приложения
                child: Image.asset(
                  LOGO,
                  width: 60.0,
                ),
              ),
            ),
          ),
          // Началась основная часть приложения
          body: Container(
            padding: CONTAINER, // Отступы от краев
            width: double.infinity, // На все длинну
            // Это контейнер в котором все...
            child: Container(
              height: double.infinity, // На всю высоту
              // Колонка с папками заданий
              child: Column(
                children: [
                  // Вот и сама карточка папки
                  Container(
                    margin:
                        EdgeInsets.only(bottom: 15.0), // Внешний отступ снизу
                    child: CardWidget(), // Создал кнопку для кликабельности карточки
                  ),
                ],
              ),
            ),
          ),
          // Место для кнопки снизу
          bottomSheet: ButtonSheetButtonWidget(),
        ));
  }
}
