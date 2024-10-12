import 'package:flutter/material.dart';
import 'package:studio_app/components/creditCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Para os ícones

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, "/history");
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/user_avatar.jpg'),
          ),
          SizedBox(width: 15),
        ],
        title: Text(
          'Friday, 16',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CreditCard(
                credits: 'Aula 16:00',
                price: '16/08/2024',
                description: '12c',
              ),
              SizedBox(height: 20),
              CreditCard(
                credits: 'Aula 16:00',
                price: '16/08/2024',
                description: '12c',
              ),
              SizedBox(height: 20),
              CreditCard(
                credits: 'Aula 16:00',
                price: '16/08/2024',
                description: '12c',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            IconButton(
              icon: Icon(Icons.calendar_today, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, "/calendar");
              },
            ),
            SizedBox(width: 40), // Para o espaço do botão flutuante
            IconButton(
              icon: FaIcon(FontAwesomeIcons.chartLine, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, "/history");
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
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
        onPressed: () {
          Navigator.pushNamed(context, "/buy");
        },
        child: Icon(Icons.add, color: Colors.black87),
      ),
    );
  }
}
