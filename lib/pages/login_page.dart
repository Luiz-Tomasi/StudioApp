import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studio_app/components/my_text_field.dart';
import 'package:studio_app/components/my_button.dart';
import 'package:studio_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final String facebookUrl = '../assets/icons/facebook-brands-solid.svg';
  final String instagramUrl = '../assets/icons/instagram-brands-solid.svg';
  final String whatsappUrl = '../assets/icons/whatsapp-brands-solid.svg';

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(190, 206, 180, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Be, Yourself',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: emailController,
              hintText: 'Enter Your Email',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reset-password');
              },
              child: const Text('Forgot Password?'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  )),
            ),
            MyButton(
              title: 'SIGN IN',
              onTap: () {
                // Lógica para login
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SvgPicture.network(
                //   instagramUrl,
                //   height: 30,
                //   // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                // ),
                // SvgPicture.network(
                //   whatsappUrl,
                //   height: 30,
                //   // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.network(
                    instagramUrl,
                    height: 30,
                    width: 30,
                    // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.network(
                    whatsappUrl,
                    height: 30,
                    width: 30,
                    // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.network(
                    facebookUrl,
                    height: 30,
                    width: 30,
                    // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  ),
                )

                // SquareTile(
                //     imagePath: ,
                // SizedBox(width: 10),
                // SquareTile(
                //     imagePath: '../assets/icons/instagram-brands-solid.svg'),
                // SizedBox(width: 10),
                // SquareTile(
                //     imagePath: '../assets/icons/whatsapp-brands-solid.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
