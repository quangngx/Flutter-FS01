import 'package:flutter/material.dart';
import 'package:social_network_app/src/config/configs.dart';
import 'package:social_network_app/src/widgets/stateless/stless.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _usernameField(),
            _passwordField(),
            PrimaryButton(content: 'Login', size: size, onTap: () {})
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.person),
        hintText: 'Username',
        hintStyle: TypoStyle.heading3.copyWith(color: DarkTheme.white),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: const Icon(Icons.security),
        hintText: 'Password',
        hintStyle: TypoStyle.heading3.copyWith(color: DarkTheme.white),
      ),
    );
  }
}
