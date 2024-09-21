import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(190, 206, 180, 1),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                '../assets/images/workoutMenu.svg', // Caminho para o arquivo SVG
                width: MediaQuery.of(context).size.width *
                    0.1, // Definindo a largura da imagem
                height: MediaQuery.of(context).size.height *
                    0.3, // Definindo a altura da imagem
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.9, // 90% da largura da tela
                height: MediaQuery.of(context).size.height *
                    0.15, // 15% da altura da tela
                decoration: BoxDecoration(
                  color: Color.fromRGBO(42, 48, 54, 1), // Fundo verde escuro
                  borderRadius:
                      BorderRadius.circular(16), // Borda com raio de 16px
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centralizar elementos verticalmente
                  children: [
                    // Botão "Sign In"
                    ElevatedButton(
                      onPressed: () {
                        // Ação ao pressionar o botão
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(18, 150, 132, 1), // Cor do fundo do botão
                        padding: EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15), // Tamanho do botão
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12), // Borda do botão
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.black, // Cor do texto
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Espaçamento entre o botão e o texto
                    // Texto "DON’T HAVE ACCOUNT SIGN UP"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DON'T HAVE ACCOUNT?",
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Ação ao pressionar o "Sign Up"
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.white, // Cor do "SIGN UP"
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
