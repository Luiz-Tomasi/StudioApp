import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textField.dart';
import 'package:my_app/components/square_tile.dart';

class login_page extends StatelessWidget {
  login_page({super.key});

  //text edditing controllers;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign user in method
  void signUserIn() {}

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

              // forgot password
              const SizedBox(height: 10), // empty space
              Text(
                'Esqueceu sua Senha?',
                style: TextStyle(color: Colors.grey.shade600),
              ),

              // sign in
              const SizedBox(height: 25),
              MyButton(onTap: signUserIn),
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
