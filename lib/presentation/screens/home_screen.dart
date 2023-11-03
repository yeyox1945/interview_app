import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_app/presentation/providers/user_repository_provider.dart';
import 'package:interview_app/presentation/providers/users_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(userRepositoryProvider).getUsers();
  }

  @override
  Widget build(BuildContext context) {
    final users = ref.watch(usersProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: users.when(
          data: (data) {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final user = data[index];

                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.username),
                  onTap: () => context.push('/user-detail', extra: user),
                );
              },
            );
          },
          error: (error, stackTrace) => throw UnimplementedError(),
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
