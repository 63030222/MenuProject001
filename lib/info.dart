import 'package:flutter/material.dart';
class Info extends StatelessWidget
{

  final String item;
  final int price;
  final int rate;

  Info(this.item, this.price, this.rate);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('$item'),),
          body: Container(
            width: 500, height: 200,
            child: Card(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Food Name : $item", style: TextStyle(fontSize: 25),),
                  Text("Price : $price",  style: TextStyle(fontSize: 18),),
                  Text("Rate : $rate",  style: TextStyle(fontSize: 18),)

                ],
              ),
            ),
          ),
        )
    );
  }
}