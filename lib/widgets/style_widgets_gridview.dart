import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/models/cart.dart';
import 'package:flutter_all_in_one/models/model.dart';
import 'package:flutter_all_in_one/pages/home_detail.dart';

class CatalogModel2 extends StatelessWidget {
 // const CatalogModel2({Key? key}) : super(key: key);
  final Item catalog;
  const CatalogModel2({super.key, required this.catalog}):assert(catalog!=null);
  @override
  Widget build(BuildContext context) {
   // Product item;

    //item!=null;

    return InkWell(
     onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeDetailPage(item: catalog);
       },
       )
       );
     },
      child: Container(
       decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
       ),
        child: Column(
         children: [
          Container(
          // padding: EdgeInsets.all(4),
           height: 140,
           width: 160,

           decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
           ),
           child: Hero(tag: Key(catalog.id.toString()),child: Image.network(catalog.image)),
          ),
          Padding(
           padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(catalog.name,),
          ),
          Padding(
           padding: EdgeInsets.symmetric(vertical: 4),
           child: Text("\$${catalog.price.toString()}",
           style: TextStyle(

            fontWeight: FontWeight.bold,
           ),),
          ),
          _addToCard(catalog: catalog),

         ],
        ),
      ),
    );
  }
}


class _addToCard extends StatefulWidget {
 // final Item catelog;
  final Item catalog;
  const _addToCard({Key? key, required this.catalog}) : super(key: key);

  @override
  State<_addToCard> createState() => _addToCardState();
}
final _cart = CartModel();
class _addToCardState extends State<_addToCard> {

 // bool isadd=true;
  bool isadd= false;
  @override
  Widget build(BuildContext context) {
   // isadd=_cart.items.contains(widget.catalog) ??  false;
    return  ElevatedButton(onPressed: (){
      print(isadd);
       isadd=true;
       print(isadd);
      final _catalog = CatalogModel();

       _cart.catalog = _catalog;
       _cart.add(widget.catalog);

      //print(widget.catalog);
       setState(() {});


    },
        child:isadd?Icon(Icons.done): Text('Add to Cart'),

    );
  }
}
