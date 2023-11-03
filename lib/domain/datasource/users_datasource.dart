import 'package:interview_app/domain/entities/user_entity.dart';

abstract class UsersDatasource {
  Future<List<UserEntity>> getUsers();
}
