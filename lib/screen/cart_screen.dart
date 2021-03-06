import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
class CartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Cart'),),
      body: Column(children: <Widget>[
        Card(
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(children: <Widget>[
              Text('total', style: TextStyle(fontSize: 20),),
              SizedBox(width: 10,),
              Chip(
                label: Text('\$${cart.totalAmount}'),
                backgroundColor: Theme.of(context).primaryColor,
                ),
          ],),
          ),
        )
      ],),
    );
 }
}