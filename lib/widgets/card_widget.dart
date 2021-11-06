import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';

class CardWidget extends StatelessWidget {
  final String? title;
  const CardWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0), // Внешний отступ снизу
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: CARD_BACKGROUND, // Цвет кнопки
            padding: EdgeInsets.all(30.0)), // Внутренние отступы у кнопки
        // Создание колонки
        child: Column(
          children: [
            // Создание строчки
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // размещение виджетов по разным сторонам кнопки
              children: [
                Text(
                  title ?? "папка без названия",
                  style: const TextStyle(
                      color: BLACK, // цвет текста
                      fontWeight: FONT_WEIGHT_BOLD,
                      fontSize: DEFAULT_FONT_SIZE),
                ),
                const Text(
                  "2/5 заданий",
                  style: TextStyle(color: GRAY, fontSize: SMALL_FONT_SIZE),
                ),
              ],
            ),
            Container(
              alignment: Alignment
                  .bottomLeft, // текст на левую сторону
              child: const Text(
                "05.11.2021",
                style: TextStyle(
                  color: GRAY,
                  fontSize: SMALL_FONT_SIZE,
                ),
              ),
            )
          ],
        ),
        onPressed: () {}, // Событие при клике
      ),
    );
  }
}
