import 'package:interview_app/data/mappers/users_mapper.dart';
import 'package:interview_app/data/models/users_response_model.dart';
import 'package:interview_app/domain/datasource/users_datasource.dart';
import 'package:interview_app/domain/entities/user_entity.dart';
import 'package:dio/dio.dart';

class RemoteUsersDatasource extends UsersDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
  ));

  @override
  Future<List<UserEntity>> getUsers() async {
    final resp = await dio.get('/users');

    print(resp.data);

    final List<UserEntity> users =
        userResponseFromJson(resp.data).map((user) => UsersMapper.userToEntity(user)).toList();

    // userResponseFromJson(resp.data);

    return users;
  }
}
