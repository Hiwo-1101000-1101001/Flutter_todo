import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';
import 'package:flutter_app/widgets/buttons/buttonsheet_button_widget.dart';
import 'package:flutter_app/widgets/text_field.dart'; // Import consts

// Страница добавления задачи
class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Создание AppBar
      appBar: AppBar(
        backgroundColor: BACKGROUND_COLOR, // Цвет у AppBar
        elevation: 0, // Убирает дефолтную тень
      ),
      body: Container(
        padding: CONTAINER, // Отступы от краев
        width: double.infinity, // На все длинну
        child: Container(
            height: double.infinity, // На всю высоту
            // Колонка с папками заданий
            child: Column(
              children: [
                // Text field Widget
                DefaultTextField(
                  settings: {
                    "label": "Загаловок", // label
                    "isMultiline": false, // многострочность
                  }
                ),
                // Text field Widget
                DefaultTextField(
                  settings: {
                    "label": "Описание", // label
                    "isMultiline": true, // многострочность
                  }
                ),
              ],
            )),
      ),
    );
  }
}
