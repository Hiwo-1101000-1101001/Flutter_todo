import 'package:flutter/material.dart';

import '../const.dart'; // Const

class ButtonSheetButtonWidget extends StatelessWidget {
  const ButtonSheetButtonWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: BACKGROUND_COLOR,
      ),
      // Внутренние отступы (Кнопка прижималась к краям экрана) 
      padding:
          const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 40.0),
      width: double.infinity, // Ширину на всю длинну
      // Создание кнопки
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ADD_BUTTON_BACKGROUND,
            padding: const EdgeInsets.all(30.0), // Внутренние отступы кнопки 
          ),
          onPressed: () {}, // Событие при клике
          // Текст кнопки
          child: const Text(
            "Добавить папку заданий",
            style: TextStyle(
                color: BLACK, // цвет текста
                fontSize: DEFAULT_FONT_SIZE, // размер текста
                fontWeight: FONT_WEIGHT_BOLD),
          )),
    );
  }
}
