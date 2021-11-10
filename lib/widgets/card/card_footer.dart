import 'package:flutter/material.dart';

import 'package:flutter_app/const.dart'; // Consts

// Карточка
class CardFooter extends StatelessWidget {
  const CardFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // На весь экран
      padding: const EdgeInsets.all(25.0), // Внутренние отступы
      // Стили
      decoration: const BoxDecoration(
        color: CARD_FOOTER_BACKGROUND, // background
        // Скругление углов
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0), // Скругление нижнего левого угла
          bottomRight: Radius.circular(10.0), // Скругление нижнего правого угла
        )
      ),
      child: Container(
        // Строчка с чекбоксом
        child: Row(
          children: <Widget>[
            // TODO: Добавить checkbox
            Text("Задание не выполнено", style: TextStyle(color: CARD_TEXT_SECOND_COLOR),)
          ],
        ), 
      ),
    );
  }
}