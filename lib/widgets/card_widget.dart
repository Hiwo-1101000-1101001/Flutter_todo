import 'package:flutter/material.dart';

import '../const.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: CARD_BACKGROUND, // Цвет кнопки
          padding: EdgeInsets.all(
              30.0)), // Внутренние отступы у кнопки
      // Создание колонки
      child: Column(
        children: [
          // Создание строчки
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // размещение виджетов по разным сторонам кнопки
            children: [
              const Text(
                "Папка заданий #2",
                style: TextStyle(
                    color: WHITE, // цвет текста
                    fontWeight: FONT_WEIGHT_BOLD,
                    fontSize: DEFAULT_FONT_SIZE),
              ),
              const Text(
                "2/5 заданий",
                style: TextStyle(
                    color: GRAY, fontSize: SMALL_FONT_SIZE),
              ),
            ],
          ),
          Container(
            alignment: Alignment
                .bottomLeft, // Ставим текст на лево (почему-то по дефолту текст на центре)
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
    );
  }
}