import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart'; // Const

// Widgets
import 'package:flutter_app/widgets/buttons/buttonsheet_button_widget.dart'; // Кнопка добавления
import 'package:flutter_app/widgets/card/card_widget.dart'; // Карта папки

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
        bottomOpacity: 0.0,
        title: Container(
          padding: const EdgeInsets.only(top: 15.0),
          child: const Center(
            // логотип приложения
            child: Text("TODO",
              style: TextStyle(
                color: Color(0xFF317B65), fontWeight: FONT_WEIGHT_BOLD))),
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
                  title: "Добавить задачу", route: "/create"),
                Expanded(
                  child: ListView(
                    children: [
                      Center(
                        child: Container(
                          margin:
                            const EdgeInsets.only(bottom: 20.0, top: 5.0),
                          child: const Text(
                            "Задания",
                            style: TextStyle(
                              color: WHITE,
                              fontSize: 20.0,
                              fontWeight: FONT_WEIGHT_BOLD),
                          )),
                      ),
                      const CardWidget(task: {
                        "title": "Приготовить борщ",
                        "description": "Нужно приготовить борщ на ужин, чтобы не голодать всю ночь!",
                        "date_start": "10.11.2021",
                        "date_end": "11.11.2021",
                        "is_finished": false,
                      }),
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
