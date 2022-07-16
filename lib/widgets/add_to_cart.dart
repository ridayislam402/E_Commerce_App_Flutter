import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/core/store.dart';
import 'package:flutter_all_in_one/models/cart.dart';
import 'package:flutter_all_in_one/models/model.dart';

import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //VxState.listen(context, to: [AddMutation,RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
   // bool isInCart=false;
    print("rebuild happend");
    return ElevatedButton(
      onPressed: () {
      //  isInCart=false;
        if (!isInCart) {
          AddMutation(catalog);
         // print(isInCart);
        }
        isInCart=true;
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: VxConsumer(builder: (context, _) {
        return isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus);
      }, mutations: {AddMutation,RemoveMutation}, notifications: {}),
    );
  }
}
