import 'package:flaty/dashboard/detailpage.dart';
import 'package:flaty/dashboard/home_page.dart';
import 'package:flaty/main.dart';
import 'package:flaty/seller/post_a_flat.dart';
import 'package:flaty/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/home',
      routes: [
        GoRoute(
          path: "details",
          builder: (c, s) => const DetailPage(),
        )
      ],
      builder: (c, s) => const MyHomePage(
        title: "Flaty",
      ),
    ),
    GoRoute(
      path: "/flatPost",
      builder: (context, state) {
        return const PostAFlat();
      },
    )
  ],
);
