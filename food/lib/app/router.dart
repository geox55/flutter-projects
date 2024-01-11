import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_hackathon/pages/welcome_page/welcome_page.dart';

import '../pages/home_page/home_page.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey();

GoRouter getRouter() => GoRouter(
      navigatorKey: navigator,
      initialLocation: HomePage.path,
      routes: [
        GoRoute(
          path: HomePage.path,
          name: HomePage.name,
          builder: (final context, final state) => const HomePage(),
        ),
      ],
    );
