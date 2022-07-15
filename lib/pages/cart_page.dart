import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   bool isadd=true;
    final _cart=CartModel();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Container(
                height: 200,

                child: _CartList()
            ),
            Divider(),
            _CartTotal(),
            test(),
          ],
        ),
      ),
    );
  }
}


class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Text("\$${_cart.totalPrice}",style: TextStyle(
            //color:Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
          )
          ),
          ElevatedButton(onPressed: () {
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Buying Not Supported')));
          },
              style: ButtonStyle(
            //    backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(StadiumBorder()),
                minimumSize: MaterialStateProperty.all(const Size(100, 40)),
              ) ,
              child: Text('Buy')
          )
        ],
      ),
    );
  }
}


class _CartList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty?Text("Nothing to show")
        :ListView.builder(
      //itemCount: 1,
        itemCount: _cart.items.length,
        itemBuilder: (context,index)
      => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: (){
            _cart.remove(_cart.items[index]);
           // setState((){});
          },
        ),
        title: Text(_cart.items[index].name),
      ),

    );
  }
}



class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  bool isadd=false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

      isadd=true;
      print(isadd);

      //print(widget.catalog);
      setState(() {});


    },
      child:isadd?Icon(Icons.done): Text('Add to Cart'),

    );
  }
}
