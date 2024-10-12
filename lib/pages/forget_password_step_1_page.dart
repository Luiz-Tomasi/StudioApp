import 'package:flutter/material.dart';
import 'package:studio_app/components/my_textField.dart';
import 'package:studio_app/components/my_button.dart';

class ForgetPasswordPage1 extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(190, 206, 180, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Please Enter Your Email Address To Receive a Verification Code',
                style: TextStyle(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20), // empty space
            MyTextField(
              controller: emailController,
              hintText: 'Enter Your Email Address',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            MyButton(
              title: 'SEND',
              onTap: () {
                // Lógica para enviar o código
              },
            ),
            TextButton(
              onPressed: () {
                // Lógica para outra forma de recuperação
              },
              child: const Text('Try Another Way'),
            ),
          ],
        ),
      ),
    );
  }
}
