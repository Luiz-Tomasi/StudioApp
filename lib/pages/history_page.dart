import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studio_app/components/creditCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Para os ícones

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
          onPressed: () {
            Navigator.pushNamed(context, "/history");
          },
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
            // Container com bordas arredondadas que envolve os textos
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSelectableText("Concluidas", 0),
                  const Text(
                    "|",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  _buildSelectableText("Hoje", 1),
                  const Text(
                    "|",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  _buildSelectableText("Agendadas", 2),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espaço entre o contêiner e os cards
            // Primeiro card
            CreditCard(
              credits: 'Concluida',
              price: '12 Créditos',
              description: 'Aula concluida no dia 01/01/2024',
              buttonText: "Analisar",
            ),
            const SizedBox(height: 15), // Espaço entre os cards
            // Segundo card
            CreditCard(
              credits: 'Concluida',
              price: '12 Créditos',
              description: 'Aula concluida no dia 02/01/2024',
              buttonText: "Analisar",
            ),
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
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_today, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, "/calendar");
              },
            ),
            SizedBox(width: 40), // Para o espaço do botão flutuante
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.chartLine, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, "/history");
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, "/history");
              },
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
