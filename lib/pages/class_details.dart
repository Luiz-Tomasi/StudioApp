import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studio_app/components/creditCard.dart';
import 'package:studio_app/components/personCard.dart';

class Class_Details extends StatefulWidget {
  const Class_Details({super.key});

  @override
  _Class_DetailsState createState() => _Class_DetailsState();
}

class _Class_DetailsState extends State<Class_Details> {
  int selectedTextIndex = 0; // Índice do texto selecionado

  // Método para atualizar o texto selecionado
  void _selectText(int index) {
    setState(() {
      selectedTextIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/user_avatar.jpg'),
          ),
          SizedBox(width: 15),
        ],
        title: const Text(
          'Friday, 16',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            PersonCard(name: "Professor", buttonText: "detalhes"),
            SizedBox(height: 20),
            PersonCard(name: "Aluno", buttonText: "detalhes"),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.calendar_today, color: Colors.white),
              onPressed: () {},
            ),
            const SizedBox(width: 40), // Para o espaço do botão flutuante
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.chartLine, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black87),
      ),
    );
  }

  // Widget para criar um texto selecionável
  Widget _buildSelectableText(String text, int index) {
    return GestureDetector(
      onTap: () => _selectText(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          text,
          style: TextStyle(
            color: selectedTextIndex == index ? Colors.greenAccent : Colors.white,
            fontWeight: selectedTextIndex == index ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
