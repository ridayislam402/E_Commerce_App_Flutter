import 'package:flutter/material.dart';

import '../models/cart.dart';
import '../models/model.dart';



class addToCard extends StatefulWidget {
  // final Item catelog;
  final Item catalog;
  const addToCard({Key? key, required this.catalog}) : super(key: key);

  @override
  State<addToCard> createState() => _addToCardState();
}

class _addToCardState extends State<addToCard> {
  final _cart = CartModel();
  // bool isadd=true;
  bool isadd= false;

  @override
  Widget build(BuildContext context) {

    return  ElevatedButton(onPressed: (){


      // bool  isadd=_cart.items.contains(widget.catalog)??  false;
      if(_cart.items.contains(widget.catalog)){
        isadd=false;
        print(isadd);
      }else{
        isadd=true;
        print(_cart);
      }


      // if(!isadd) {
      final _catalog = CatalogModel();

      _cart.catalog = _catalog;
      _cart.add(widget.catalog);

      //print(widget.catalog);
      setState(() {});
      //}
    },
      child:isadd?Icon(Icons.done): Text('Add to Cart'),

    );
  }
}
