import 'package:flutter/material.dart';
import 'package:studio_app/components/my_textField.dart';
import 'package:studio_app/components/my_button.dart';

class ForgetPasswordPage2 extends StatelessWidget {
  final verificationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(190, 206, 180, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.email,
              size: 100,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Enter Verification Code Just Sent To Your Email Address',
                style: TextStyle(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: verificationCodeController,
              hintText: 'Enter Verification Code',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            MyButton(
              title: 'VERIFY',
              onTap: () {
                // Lógica para verificação
              },
            ),
            TextButton(
              onPressed: () {
                // Lógica para reenviar o código
              },
              child: const Text('Resend Code'),
            ),
          ],
        ),
      ),
    );
  }
}
