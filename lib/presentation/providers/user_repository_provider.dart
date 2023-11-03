import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_app/data/datasources/remote_users_datasource.dart';
import 'package:interview_app/data/repositories/remote_users_repository.dart';

final userRepositoryProvider = Provider<RemoteUsersRepository>((ref) {
  final datasource = RemoteUsersDatasource();
  return RemoteUsersRepository(datasource: datasource);
});
