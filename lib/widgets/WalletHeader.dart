import 'package:expense_app_sample1/data.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Rittik\'s Wallet',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              ),
            )
          ),
          Container(
            height: 60,
            width: 60,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: customShadow
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red[400],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200]
                    ),
                  ),
                ),
                Center(
                  child: Icon(Icons.notifications)
                )
              ],
            )
          )
        ] ,
      )
    );
  }
}