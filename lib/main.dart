import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import './src/config/router/app_router.dart';
import 'src/config/themes/app_themes.dart';
import 'src/locator.dart';
import 'src/utils/constants/strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        theme: AppTheme.light,
        title: appTitle,
      ),
    );
  }
}
