import 'package:flutter/material.dart';
import 'package:flutter_hackathon/widgets/main_widget.dart';

class HomeWidget extends StatefulWidget {

  const HomeWidget({
    super.key,
  });

  @override
  State<HomeWidget> createState() => HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;/*
  Color iconsColor = const Color.fromRGBO(223, 136, 34, 1);*/
  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: _getScreen()),

          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,/*
          selectedColor: const Color.fromRGBO(223, 136, 34, 1),*/
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromRGBO(223, 136, 34, 1),
          unselectedItemColor:  const Color.fromRGBO(223, 136, 34, 1),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        currentIndex: selectedIndex,
        /*
          selectedIndex: selectedIndex,
          indicatorColor: const Color.fromRGBO(255, 247, 227, 1),*/
          items:  const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, /*color: iconsColor*/),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: 'mark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User',
            ),
          ],
          onTap: (final index) {
            setState(() => selectedIndex = index);
          },
      )
    );
    /*Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const Text('Привет, '), Text(widget.home)],
    );*/
  }

  Widget _getScreen() {
    Widget? screen;
    switch (selectedIndex) {
      case 0:
        screen = const MainWidget(main: "");
        break;
      case 1:
        screen = const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Cart, ')],
        );
        break;
      case 2:
        screen = const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Favorites, ')],
        );
        break;
      case 3:
        screen = const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('User, ')],
        );
        break;
    }
    return screen?? Container();
  }
}
