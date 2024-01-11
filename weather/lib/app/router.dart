import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';
import 'package:hackathon_demo/pages/weather_page/main_page.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey();

GoRouter getRouter() => GoRouter(
      navigatorKey: navigator,
      initialLocation: MainPage.path,
      routes: [
        GoRoute(
          path: MainPage.path,
          name: MainPage.name,
          builder: (final context, final state) => const MainPage(),
        ),
      ],
    );
