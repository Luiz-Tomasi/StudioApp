import 'package:flutter/material.dart';
import 'package:studio_app/components/my_button.dart';

class CreditCard extends StatelessWidget {
  final String credits;
  final String price;
  final String description;

  // Sign user in method
  void selectedFunc() {}

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
              Row(
                children: [
                  
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MyButton(onTap: selectedFunc, title: 'Comprar',),
                ],
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
