import 'package:flutter/material.dart';
import 'package:studio_app/components/my_button.dart';
import 'package:studio_app/components/my_textField.dart';
import 'package:studio_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user in method
  void signUserIn(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(190, 206, 180, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50), // empty space
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              // Welcome
              const SizedBox(height: 50), // empty space
              Text(
                'Seja bem-vindo!',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),

              Text(
                'Estávamos com saudades de você',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),

              // Username
              const SizedBox(height: 50), // empty space
              MyTextField(
                controller: usernameController,
                hintText: 'Usuário',
                obscureText: false,
              ),

              // Password
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              // Forgot password
              const SizedBox(height: 10), // empty space
              Text(
                'Esqueceu sua Senha?',
                style: TextStyle(color: Colors.grey.shade600),
              ),

              // Sign in
              const SizedBox(height: 25),
              MyButton(onTap: () => signUserIn(context), title: "Login"),

              // Or continue with
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Ou continue com",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),

              // Google / Apple sign in
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "../assets/images/googleIcon.webp"),
                  SizedBox(width: 25),
                  SquareTile(imagePath: "../assets/images/appleIcon.png"),
                ],
              ),

              // Not a member? Register now
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não é cadastrado?",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: const Text(
                      'Cadastre agora',
                      style: TextStyle(
                        color: Colors.blue, // Cor do "SIGN UP"
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
