import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart'; // Consts

// Кнопка добавления
class ButtonSheetButtonWidget extends StatelessWidget {
  final String title; // Текст кнопки
  final String route; // Имя роута для навигации
  
  const ButtonSheetButtonWidget({required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Внутренние отступы (Кнопка прижималась к краям экрана)
      margin: const EdgeInsets.only(bottom: 20.0),
      width: double.infinity, // Ширину на всю длинну
      // Создание кнопки
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ADD_BUTTON_BACKGROUND, // Цвет кнопки
          padding: const EdgeInsets.all(30.0), // Внутренние отступы кнопки
          // START - уничтожение тени
          elevation: 0,
          shadowColor: Colors.transparent, 
          // END - уничтожение тени
          // START - скругление углов
          shape:
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
          // END - скругление углов
        ),
        // START- Событие при клике
        onPressed: () {
          Navigator.pushNamed(context, route); // Переход на другой экран
        },
        // END - Событие при клике
        // START - Текст кнопки
        child: Text(
          title, // Текст
          style: const TextStyle(
            color: WHITE, // цвет текста
            fontSize: DEFAULT_FONT_SIZE, // размер текста
            fontWeight: FONT_WEIGHT_REGULAR // font-weight
          ),
        )
        // END - Текст кнопки
      ),
    );
  }
}
