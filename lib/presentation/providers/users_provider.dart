import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_app/domain/entities/user_entity.dart';
import 'package:interview_app/presentation/providers/user_repository_provider.dart';

final usersProvider = FutureProvider<List<UserEntity>>((ref) {
  return ref.read(userRepositoryProvider).getUsers();
});
