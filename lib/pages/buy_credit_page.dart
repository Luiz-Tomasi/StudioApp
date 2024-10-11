import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CreditCard(
              credits: '12 Créditos',
              price: 'R\$140',
              description: 'Suficiente para uma aula por semana durante 1 mês',
            ),
            SizedBox(height: 20),
            CreditCard(
              credits: '12 Créditos',
              price: 'R\$140',
              description: 'Suficiente para uma aula por semana durante 1 mês',
            ),
            SizedBox(height: 20),
            CreditCard(
              credits: '12 Créditos',
              price: 'R\$140',
              description: 'Suficiente para uma aula por semana durante 1 mês',
            ),
          ],
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
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.calendar_today, color: Colors.white),
              onPressed: () {},
            ),
            SizedBox(width: 40), // Para o espaço do botão flutuante
            IconButton(
              icon: FaIcon(FontAwesomeIcons.chartLine, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black87),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  final String credits;
  final String price;
  final String description;

  const CreditCard({
    Key? key,
    required this.credits,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                credits,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                price,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            child: Row(
              children: [
                Text('Comprar'),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text(
                    'L',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
