import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart'; // Const

// Widgets
import 'package:flutter_app/widgets/buttonsheet_button_widget.dart'; // Кнопка добавления
import 'package:flutter_app/widgets/card_widget.dart'; // Карта папки

// Виджет главной страници
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Создание AppBar
      appBar: AppBar(
        backgroundColor: BACKGROUND_COLOR, // Цвет у AppBar
        elevation: 0, // Убирает дефолтную тень
        title: Container(
          padding: const EdgeInsets.only(top: 15.0),
          child: Center(
            // логотип приложения
            child: Image.asset(
              LOGO,
              width: 60.0,
            ),
          ),
        ),
      ),
      body: Container(
        padding: CONTAINER, // Отступы от краев
        width: double.infinity, // На все длинну
        child: Container(
            height: double.infinity, // На всю высоту
            // Колонка с папками заданий
            child: Container(
              child: Column(
                children: [
                  // Кнопка добавления папки заданий
                  const ButtonSheetButtonWidget(
                    title: "Добавить задание",
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20.0, top: 5.0),
                            child: const Text(
                            "Задания",
                            style: TextStyle(
                                color: WHITE,
                                fontSize: 20.0,
                                fontWeight: FONT_WEIGHT_BOLD),
                          )),
                        ),
                        const CardWidget(
                          title: "Задание №1",
                        ),
                        const CardWidget(
                          title: "Задание №2",
                        ),
                        const CardWidget(
                          title: "Задание №3",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
