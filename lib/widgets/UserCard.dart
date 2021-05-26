
import 'package:expense_app_sample1/data.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),


        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text('Selected Card', style: TextStyle(fontSize: 18.0, 
          fontWeight: FontWeight.bold),),
        ),

        Container(
          width: deviceWidth - 20,
          height: 250.0,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            boxShadow: customShadow,
            border: Border.all(width: 1.5, color: Colors.grey.withOpacity(0.2))
          ),
          child: Stack(
            children: <Widget>[


              Positioned.fill(
                top : 0,
                left: -50,
                right: 50,
                bottom: -300,
                child: Container(
                  width: deviceWidth * 0.4,
                  height: deviceWidth * 0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.4),
                    boxShadow: customShadow
                  )
                )
              ),


              Positioned.fill(
                top : -80,
                left: -300,
                right: 0,
                bottom: -80,
                child: Container(
                  width: deviceWidth * 0.6,
                  height: deviceWidth * 0.6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.5),
                    boxShadow: customShadow
                  )
                )
              ),






              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 40.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        // margin: EdgeInsets.only(left: 20.0, top: 20.0),
                        width: deviceWidth * 0.60,
                        child: Image.asset('assets/mastercardlogo.png'),
                      ),
                    ),


                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.only(left: 20.0, top: 20.0),
                                  child: Text(
                                    '**** **** **** 6713',
                                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,
                                    color: Colors.grey[800]),
                                  ),
                                ),


                                Container(
                                  // margin: EdgeInsets.only(left: 20.0, top: 20.0),
                                  child: Text(
                                    'PLATINUM CARD',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,
                                    color: Colors.grey[800]),
                                  ),
                                ),
                              ]
                            ),


                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                              child : Text(''),
                              decoration : BoxDecoration(boxShadow: customShadow,
                              color: Colors.blue.withOpacity(0.1),borderRadius: BorderRadius.circular(10))
                            ),

                          ]
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ]
          ),
        ),

      ],
    );
  }
}