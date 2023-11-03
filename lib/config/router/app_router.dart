import 'package:go_router/go_router.dart';
import 'package:interview_app/domain/entities/user_entity.dart';
import 'package:interview_app/presentation/screens/home_screen.dart';
import 'package:interview_app/presentation/screens/user_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/user-detail',
    builder: (context, state) {
      final user = state.extra as UserEntity;
      return UserScreen(user: user);
    },
  ),
]);
