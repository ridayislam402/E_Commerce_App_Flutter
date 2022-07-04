import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/models/demomodel.dart';
import 'package:flutter_all_in_one/models/model.dart';
import 'package:flutter_all_in_one/pages/home_detail.dart';

class CatalogModel2 extends StatelessWidget {
 // const CatalogModel2({Key? key}) : super(key: key);
 final Item item;
  const CatalogModel2({super.key, required this.item}):assert(item!=null);
  @override
  Widget build(BuildContext context) {
   // Product item;

    //item!=null;

    return InkWell(
     onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeDetailPage(item: item);
       },
       )
       );
     },
      child: Column(
       children: [
        Container(
        // padding: EdgeInsets.all(4),
         height: 180,
         width: 160,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
         ),
         child: Hero(tag: Key(item.id.toString()),child: Image.network(item.image)),
        ),
        Padding(
         padding: EdgeInsets.symmetric(vertical: 4),
          child: Text(item.name,),
        ),
        Padding(
         padding: EdgeInsets.symmetric(vertical: 4),
         child: Text("\$${item.price.toString()}",
         style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),),
        )
       ],
      ),
    );
  }
}


