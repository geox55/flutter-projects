import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_hackathon/app/bloc/repositories.dart';
import 'package:flutter_hackathon/app/bloc/services.dart';
import 'package:flutter_hackathon/app/router.dart';
import 'package:flutter_hackathon/app/themes/theme_palette.dart';
import 'package:flutter_hackathon/app/themes/theme_typography.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Override default certificate for older android devices
  // to allow them to send requests over https
  // Remove this if you don't need support for older android devices
  // final certificate = await rootBundle.loadString('assets/certificate.pem');
  // SecurityContext.defaultContext.setTrustedCertificatesBytes(
  //   Uint8List.fromList(certificate.codeUnits),
  // );

  // Set up orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MultiRepositoryProvider(
      providers: commonRepositories,
      child: MultiBlocProvider(
        providers: commonServices,
        child: MaterialApp.router(
          routerConfig: getRouter(),
          theme: ThemeData(
            colorScheme: themePalette,
            textTheme: themeTypography,
            useMaterial3: true,
            extensions: const [customPalette],
          ),
        ),
      ),
    );
  }
}
