import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/models/model.dart';
class StyleWidget extends StatelessWidget {
 // const StyleWidget({Key? key}) : super(key: key);
 final Item item;

  const StyleWidget({super.key, required this.item}):assert(item!=null);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
       padding: EdgeInsets.all(15.0),
        child: ListTile(
          onTap: () {
            print('${item.name}tap');
          },
         leading: Image.network(item.image),
         title: Text(item.name),
         subtitle: Text(item.desc),
         trailing: Text("\$${item.price}",
         textScaleFactor: 1.5,
         style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold
         ),
        ),
        ),
      ),
    );
  }
}
