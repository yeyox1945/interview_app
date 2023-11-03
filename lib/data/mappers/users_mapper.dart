import 'package:interview_app/data/models/users_response_model.dart';
import 'package:interview_app/domain/entities/user_entity.dart';

class UsersMapper {
  static UserEntity userToEntity(UserResponse usersResponse) {
    return UserEntity(
      id: usersResponse.id,
      name: usersResponse.name,
      username: usersResponse.username,
      email: usersResponse.email,
    );
  }
}
