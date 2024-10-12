import 'package:flutter/material.dart';
import 'package:studio_app/components/my_button.dart';

class PersonCard extends StatelessWidget {
  final String name;
  final String buttonText;

  // Sign user in method
  void selectedFunc() {}

  const PersonCard({
    Key? key,
    required this.name,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Ajuste para alinhar à esquerda
          children: [
            CircleAvatar(
              radius: 30, // Tamanho do ícone
              backgroundColor: Colors.blue, // Cor de fundo do ícone
              child: Icon(
                Icons.person, // Ícone que você deseja mostrar
                color: Colors.white, // Cor do ícone
              ),
            ), // Espaçamento entre o ícone e o nome
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        MyButton(
          onTap: selectedFunc,
          title: buttonText,
        ),
      ]),
    );
  }
}
