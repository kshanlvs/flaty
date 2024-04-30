import 'package:flaty/dashboard/detailpage.dart';
import 'package:flaty/dashboard/home_page.dart';
import 'package:flaty/main.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      routes: [
        GoRoute(path: "details", builder: (c, s) => const DetailPage())
      ],
      builder: (c, s) => const MyHomePage(
        title: "Flaty",
      ),
    ),
  ],
);
