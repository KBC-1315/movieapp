import 'package:go_router/go_router.dart';
import 'package:movieapp/views/home_screen.dart';
import 'package:movieapp/views/movie_detail_screen.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: "movies/:movieId",
          builder: (context, state) {
            final movieId = int.parse(state.pathParameters["movieId"]!);
            final category = state.uri.queryParameters["category"];
            return MovieDetailScreen(movieId: movieId, category: category);
          },
        ),
      ],
    ),
  ],
);
