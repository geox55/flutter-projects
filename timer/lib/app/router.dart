import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_hackathon/pages/welcome_page/welcome_page.dart';

import 'package:flutter_hackathon/pages/clocks_page/clocks_page.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey();

GoRouter getRouter() => GoRouter(
      navigatorKey: navigator,
      initialLocation: ClocksPage.path,
      routes: [
        GoRoute(
          path: WelcomePage.path,
          name: WelcomePage.name,
          builder: (final context, final state) => const WelcomePage(),
        ),
        GoRoute(
          path: ClocksPage.path,
          name: ClocksPage.name,
          builder: (final context, final state) => const ClocksPage(),
        ),
      ],
    );
