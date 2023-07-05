import 'package:belajar_flutter/fic6/bloc_example_auth/auth_bloc/auth_bloc.dart';
import 'package:belajar_flutter/fic6/bloc_example_auth/auth_bloc/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        elevation: 5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Welcome to the FIC batch 6'),
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AuthBloc>().add(LoginEvent());
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
