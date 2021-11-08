import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';

// Карточка задания
class CardWidget extends StatelessWidget {
  final String? title; // Принимает title
  const CardWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    // Карточка
    return Container(
      // Стили
      decoration:
        BoxDecoration(
          color: WHITE, // background
          borderRadius: BorderRadius.circular(5.0) // Скругления углов
        ),
      margin: const EdgeInsets.only(bottom: 15.0), // Внешний отступ снизу
      
      child: Container(
        // Колонка
        child: Column(
          children: [
            // Верхняя часть карты со всей информацией о задании
            Container(
              padding: EdgeInsets.all(25.0), // Внутренние отступы
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Контент будет становиться слева
                children: [
                  // Загаловок
                  Container(
                    alignment: Alignment.bottomLeft, // текст на левую сторону
                    // Текст с загаловком
                    child: Text(
                      title ?? "папка без названия",
                      style: const TextStyle(
                        color: BLACK, // цвет текста
                        fontWeight: FONT_WEIGHT_BOLD, // толщина шрифта
                        fontSize: DEFAULT_FONT_SIZE // Размер текста
                      ),
                    ),
                  ),
                  // Дата
                  Container(
                    alignment: Alignment.bottomLeft, // текст на левую сторону
                    // Текст с датой
                    child: const Text(
                      "05.11.2021",
                      style: TextStyle(
                        color: GRAY, // Цвет текста
                        fontSize: SMALL_FONT_SIZE, // Размер текста
                      ),
                    ),
                  ),
                  // Описание
                  Container(
                    margin: const EdgeInsets.only(top: 15.0), // Внешние отступы сверху
                    // Описание
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                      style: TextStyle(
                        color: GRAY // Цвет текста
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // CheckBox Container
            Container(
              width: double.infinity, // На весь экран
              padding: const EdgeInsets.all(25.0), // Внутренние отступы
              // Стили
              decoration: const BoxDecoration(
                color: LIGHT_GRAY, // background
                // Скругление углов
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                )
              ),
              child: Container(
                // Строчка с чекбоксом
                child: Row(
                  children: <Widget>[
                    // TODO: Добавить checkbox
                    Text("Задание не выполнено")
                  ],
                ), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
