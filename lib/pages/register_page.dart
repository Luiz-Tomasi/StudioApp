import 'package:flutter/material.dart';
import 'package:studio_app/components/my_button.dart';
import 'package:studio_app/components/my_textField.dart';
import 'package:studio_app/components/square_tile.dart';

class register_page extends StatelessWidget {
  register_page({super.key});

  //text edditing controllers;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(190, 206, 180, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50), // empty space
              //logo
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

              // password
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              const SizedBox(height: 10),
              MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirmar senha',
                obscureText: true,
              ),

              // sign up
              const SizedBox(height: 25),
              MyButton(onTap: signUserUp, title: "Cadastrar-se"),
              // or continue with
              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    )),
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
                    ))
                  ],
                ),
              ),

              // google /
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "../assets/images/googleIcon.webp"),
                  const SizedBox(width: 25),
                  SquareTile(imagePath: "../assets/images/appleIcon.png"),
                ],
              )

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
