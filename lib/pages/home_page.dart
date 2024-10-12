import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studio_app/components/my_button.dart';
// import 'package:studio_app/components/my_textField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 33, 38),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                // Componente redondo
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Hi, {name}',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ]),
              // Text(
              //   '+12 C',
              //   style: TextStyle(color: Colors.white, fontSize: 18),
              // ),
              // SizedBox(width: 20),
              Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 42, 48, 54),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  '+ 12 C',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(20, 255, 255, 255),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 33, 38),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Aula em:',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Pilates',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Sua próxima aula vai começar em:',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  '34 Minutes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
              ])),
          Text(
            'Agendar aula:',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          MyButton(
              title: 'Pilates: Marque suas aulas aqui',
              onTap: () => Navigator.pushNamed(context, "/calendar")),
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.black87,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () {},
      //   ),
      // actions: [
      //   CircleAvatar(
      //     backgroundImage: AssetImage('assets/user_avatar.jpg'),
      //   ),
      //   SizedBox(width: 15),
      // ],
      // title: Text(
      //   'Friday, 16',
      //   style: TextStyle(
      //     color: Colors.greenAccent,
      //     fontSize: 24,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      // ),
      /*body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            MyButton(onTap: null, title: '+ 12 C'),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     '+ 12 C',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //         backgroundColor: Color.fromARGB(20, 255, 255, 255)),
            //   ),
            // ),
            const SizedBox(height: 10),
            // Calendário (substituído por exemplo simples)
            // Container(
            //   height: 300,
            //   color: Colors.black54,
            //   child: Center(
            //     child: Text(
            //       "Calendário",
            //       style: TextStyle(color: Colors.white, fontSize: 18),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total: 16c',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Confirmar'),
                ),
              ],
            ),
          ],
        ),
      ),*/
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
