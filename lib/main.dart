import 'package:expense_app_sample1/widgets/UserCard.dart';
import 'package:expense_app_sample1/widgets/WalletHeader.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Expense Tracker App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30.0),
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            WalletHeader(),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: UserCard()
              )
            ),
            Expanded(child: Container(),)
          ],
        ),
      ),
    );
  }
}