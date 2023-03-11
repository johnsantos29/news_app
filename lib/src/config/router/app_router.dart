import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app/src/presentation/views/breaking_news_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(routes: [
  // todo - for boilerplates - setup placholder view that extends HookWidget
  AutoRoute(page: BreakingNewsView, initial: true),
])
class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();
