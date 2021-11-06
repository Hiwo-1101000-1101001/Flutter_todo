import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart'; // Const

class ButtonSheetButtonWidget extends StatelessWidget {
  final String? title;
  const ButtonSheetButtonWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: BACKGROUND_COLOR,
      ),
      // Внутренние отступы (Кнопка прижималась к краям экрана)
      padding: const EdgeInsets.only(bottom: 20.0),
      width: double.infinity, // Ширину на всю длинну
      // Создание кнопки
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ADD_BUTTON_BACKGROUND,
            padding: const EdgeInsets.all(30.0), // Внутренние отступы кнопки
          ),
          onPressed: () {}, // Событие при клике
          // Текст кнопки
          child: Text(
            title ?? "Похоже я забыл указать здесь название",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: BLACK, // цвет текста
                fontSize: DEFAULT_FONT_SIZE, // размер текста
                fontWeight: FONT_WEIGHT_REGULAR),
          )),
    );
  }
}
