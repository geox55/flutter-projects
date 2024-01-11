import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double topMargin = screenHeight * 0.15;

    return Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity, // Растягиваем по горизонтали на весь экран
          margin: EdgeInsets.only(top: topMargin),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.fill, // Растягиваем без сохранения пропорций
            ),
          ),
        ),
      ),
    );
  }
}