import 'package:flutter/material.dart';
// import 'package:studio_app/components/my_button.dart';
// import 'package:studio_app/components/my_textField.dart';
// import 'package:studio_app/components/square_tile.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  //text edditing controllers;
  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();
  // final confirmPasswordController = TextEditingController();

  // Sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'Shape Your Muscles',
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nome completo',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirme sua senha',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica de registro
                },
                child: Text('Cadastre-se'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                  // Navegar para a tela de login
                },
                child: Text('Já possui uma conta?'),
              ),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: Color.fromRGBO(190, 206, 180, 1),
    //   body: SafeArea(
    //     child: Center(
    //       child: Column(
    //         children: [
    //           const SizedBox(height: 50), // empty space
    //           //logo
    //           const Icon(
    //             Icons.lock,
    //             size: 100,
    //           ),

    //           // Welcome
    //           const SizedBox(height: 50), // empty space
    //           Text(
    //             'Seja bem-vindo!',
    //             style: TextStyle(
    //               color: Colors.grey.shade700,
    //               fontSize: 16,
    //             ),
    //           ),

    //           Text(
    //             'Estávamos com saudades de você',
    //             style: TextStyle(
    //               color: Colors.grey.shade700,
    //               fontSize: 16,
    //             ),
    //           ),

    //           // Username
    //           const SizedBox(height: 50), // empty space
    //           MyTextField(
    //             controller: usernameController,
    //             hintText: 'Usuário',
    //             obscureText: false,
    //           ),

    //           // password
    //           const SizedBox(height: 10),
    //           MyTextField(
    //             controller: passwordController,
    //             hintText: 'Senha',
    //             obscureText: true,
    //           ),

    //           const SizedBox(height: 10),
    //           MyTextField(
    //             controller: confirmPasswordController,
    //             hintText: 'Confirmar senha',
    //             obscureText: true,
    //           ),

    //           // sign up
    //           const SizedBox(height: 25),
    //           MyButton(onTap: signUserUp, title: "Cadastrar-se"),
    //           // or continue with
    //           const SizedBox(height: 25),

    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //             child: Row(
    //               children: [
    //                 Expanded(
    //                     child: Divider(
    //                   thickness: 0.5,
    //                   color: Colors.grey.shade400,
    //                 )),
    //                 Padding(
    //                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //                   child: Text(
    //                     "Ou continue com",
    //                     style: TextStyle(color: Colors.grey.shade700),
    //                   ),
    //                 ),
    //                 Expanded(
    //                     child: Divider(
    //                   thickness: 0.5,
    //                   color: Colors.grey.shade400,
    //                 ))
    //               ],
    //             ),
    //           ),

    //           // google /
    //           const SizedBox(height: 25),
    //           const Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               SquareTile(imagePath: "../assets/images/googleIcon.webp"),
    //               const SizedBox(width: 25),
    //               SquareTile(imagePath: "../assets/images/appleIcon.png"),
    //             ],
    //           )

    //           // not a member? register now
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
