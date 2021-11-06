import 'package:flutter/material.dart';
import 'package:flutter_app/const.dart';
import 'package:flutter_app/screens/todo_detail_screen.dart';

// Widgets
import 'package:flutter_app/widgets/buttonsheet_button_widget.dart';
import 'package:flutter_app/widgets/card_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Создал AppBar
      appBar: AppBar(
        backgroundColor: BACKGROUND_COLOR, // Цвет у AppBar
        elevation: 0, // Убрал дефолтную тень у AppBar
        title: Container(
          padding: EdgeInsets.only(top: 15.0),
          child: Center(
            // Ставлю логотип приложения
            child: Image.asset(
              LOGO,
              width: 60.0,
            ),
          ),
        ),
      ),
      body: Container(
        padding: CONTAINER, // Отступы от краев
        width: double.infinity, // На все длинну
        child: Container(
          height: double.infinity, // На всю высоту
          // Колонка с папками заданий
          child: ListView(
            children: <Widget>[
              // Кнопка добавления папки задния
              ButtonSheetButtonWidget(),
              CardWidget(
                title: "Hello world",
              ),
              CardWidget(
                title: null,
              ),
            ],
          ),
        ),
      )
    );
  }
}
