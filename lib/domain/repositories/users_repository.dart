import 'package:interview_app/domain/entities/user_entity.dart';

abstract class UsersRepository {
  Future<List<UserEntity>> getUsers();
}
