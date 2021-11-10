import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart'; // import consts

import 'package:flutter_app/widgets/card/card_footer.dart';

// Карточка задания
class CardWidget extends StatelessWidget {
  final Map task; // Принимает список
  const CardWidget({required this.task});

  @override
  Widget build(BuildContext context) {
    // Карточка
    return Container(
      // Стили
      decoration:
        BoxDecoration(
          color: CARD_BACKGROUND, // background
          borderRadius: BorderRadius.circular(10.0) // Скругления углов
        ),
      margin: const EdgeInsets.only(bottom: 15.0), // Внешний отступ снизу
      
      child: Container(
        // Колонка
        child: Column(
          children: [
            // Верхняя часть карты со всей информацией о задании
            Container(
              padding: const EdgeInsets.all(25.0), // Внутренние отступы
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Контент будет становиться слева
                children: [
                  // Загаловок
                  Container(
                    alignment: Alignment.bottomLeft, // текст на левую сторону
                    // Текст с загаловком
                    child: Text(
                      task["title"] ?? "Задание без названия",
                      style: const TextStyle(
                        color: CARD_TEXT_DEFAULT_COLOR, // цвет текста
                        fontWeight: FONT_WEIGHT_BOLD, // толщина шрифта
                        fontSize: DEFAULT_FONT_SIZE // Размер текста
                      ),
                    ),
                  ),
                  // Дата
                  Container(
                    margin: const EdgeInsets.only(top: 5.0), // Отступ сверху
                    // Текст с датой
                    child: Text(
                      task["date_start"] + " - " + task["date_end"] ?? "Дата не указана",
                      style: const TextStyle(
                        color: CARD_TEXT_SECOND_COLOR, // Цвет текста
                        fontSize: SMALL_FONT_SIZE, // Размер текста
                      ),
                    ),
                  ),
                  // Описание
                  Container(
                    margin: const EdgeInsets.only(top: 15.0), // Внешние отступы сверху
                    // Описание
                    child: Text(
                      task["description"] ?? "Описание пустое",
                      style: const TextStyle(
                        color: CARD_TEXT_SECOND_COLOR // Цвет текста
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // START - Card footer 
            const CardFooter()
            // END - Card footer
          ],
        ),
      ),
    );
  }
}
