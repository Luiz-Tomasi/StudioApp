import 'package:flutter/material.dart';
import 'package:studio_app/components/my_textField.dart';
import 'package:studio_app/components/my_button.dart';

class ForgetPasswordPage3 extends StatelessWidget {
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                'Your New Password Must Be Different From Your Old Password',
                style: TextStyle(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: newPasswordController,
              hintText: 'New Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            MyButton(
              title: 'SAVE',
              onTap: () {
                // Lógica para salvar nova senha
              },
            ),
          ],
        ),
      ),
    );
  }
}
