import "package:flutter/material.dart";

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(72, 67, 82, 1),
          primaryColor: const Color.fromRGBO(255, 0, 0, 1),
          fontFamily: 'Jost'
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(72, 67, 82, 1),
            elevation: 0,
            title: Container(
              margin: EdgeInsets.only(
                top: 25.0,
                bottom: 25.0,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/todo_logo.png",
                  width: 60.0,
                ),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(30.0),
            width: double.infinity,
            child: Container(
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, padding: EdgeInsets.all(30.0)),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: const Text(
                                    "Папка заданий #2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  child: const Text(
                                    "2/5 заданий",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(216, 216, 216, 1)),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "05.11.2021",
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Color.fromRGBO(216, 216, 216, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, padding: EdgeInsets.all(30.0)),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: const Text(
                                    "Папка заданий #1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  child: const Text(
                                    "2/5 заданий",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(216, 216, 216, 1)),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "05.11.2021",
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Color.fromRGBO(216, 216, 216, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(72, 67, 82, 1),
            ),
            padding:
                const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 40.0),
            width: double.infinity,
            child: ElevatedButton(
                // style: ButtonStyle(
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //         RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(5.0),
                // ))),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(21, 255, 185, 1),
                  padding: const EdgeInsets.all(30.0),
                ),
                onPressed: () {},
                child: const Text(
                  "Добавить папку заданий",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ));
  }
}
