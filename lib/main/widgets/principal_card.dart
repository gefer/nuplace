import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrincipalCard extends StatelessWidget {
  final int balance;
  final String username;

  const PrincipalCard({
    required this.balance,
    required this.username,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.black54,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Olá $username,",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Seu saldo atual é de R\$ ${balance?.toStringAsFixed(2)}" ??
                      "0.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Aproveite as ofertas que separamos pra você" ??
                      "0.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
