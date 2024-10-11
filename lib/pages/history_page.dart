import 'package:flutter/material.dart';
import 'package:my_app/components/creditCard.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Center(child: Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: [CreditCard(
                credits: '12 Créditos',
                price: 'R\$140',
                description: 'Suficiente para uma aula por semana durante 1 mês',
              ),]

    ))));
  }
}
