import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import './src/config/router/app_router.dart';
import './src/config/themes/app_themes.dart';
import './src/domain/repositories/api_repository.dart';
import './src/locator.dart';
import './src/presentation/cubits/remote_articles/remote_articles_cubit.dart';
import './src/utils/constants/strings.dart';
import 'src/domain/repositories/database_repository.dart';
import 'src/presentation/cubits/local_articles/cubit/local_articles_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocalArticlesCubit(locator<DatabaseRepository>())..getAllSavedArticles()),
        BlocProvider(create: (context) => RemoteArticlesCubit(locator<ApiRepository>())..getBreakingNewsArticles()),
      ],
      child: OKToast(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          theme: AppTheme.light,
          title: appTitle,
        ),
      ),
    );
  }
}
