import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_app/domain/entities/user_entity.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () => context.pop(),
        ),
        title: const Text('User'),
      ),
      body: Center(
        child: Text(user.name),
      ),
    );
  }
}
