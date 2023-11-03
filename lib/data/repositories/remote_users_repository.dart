import 'package:interview_app/domain/datasource/users_datasource.dart';
import 'package:interview_app/domain/entities/user_entity.dart';
import 'package:interview_app/domain/repositories/users_repository.dart';

class RemoteUsersRepository extends UsersRepository {
  final UsersDatasource datasource;

  RemoteUsersRepository({required this.datasource});

  @override
  Future<List<UserEntity>> getUsers() => datasource.getUsers();
}
