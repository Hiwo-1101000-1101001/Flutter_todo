import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart'; // Consts

// TextField Custom Widget
class DefaultTextField extends StatelessWidget {
  final Map settings; // Настройки TextField
  const DefaultTextField({Key? key, required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0), // Margin
      // START - TextField
      child: TextField(
        // Условие если значение isMultiline = true, то TextField становится многострочным
        keyboardType: settings["isMultiline"] == true ? TextInputType.multiline : TextInputType.name,
        maxLines: null, // Максимально строк
        // START - Стили текста
        style: const TextStyle(
          fontSize: DEFAULT_FONT_SIZE, // Размер шрифта
          color: WHITE // Цвет шрифта
        ),
        // END - Стили текста
        // START - Стилизация TextField
        decoration: InputDecoration(
          labelText: settings["label"], // label text
          // Стили label
          labelStyle: const TextStyle(
            color: WHITE, // Цвет label
          ),
          // START - Border
          // START - Стили при обычном режиме
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: WHITE, // Цвет рамки
              width: 2.0 // Размер рамки
            ),
          ),
          // END - Стили при обычном режиме
          // START - Стили при фокусе
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: WHITE, // Цвет рамки
              width: 2.0 // Размер рамки
            ),
          ),
          // END - Стили при фокусе
          // END - Border
        ),
        // END - Стилизация TextField
      ),
      // END - TextField
    );
  }
}
