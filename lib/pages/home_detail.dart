import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/models/model.dart';

import '../widgets/add_to_cart.dart';

class HomeDetailPage extends StatelessWidget {
  //const HomeDetailPage({Key? key}) : super(key: key);
  final Item item;

  const HomeDetailPage({super.key, required this.item}):assert(item!=null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
        bottomNavigationBar: 
        Padding(
          padding: EdgeInsets.all(16),
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${item.price}",style: TextStyle(
                  //color:Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              )),
          addToCard(catalog: item),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                  height: 300,
                  child: Hero(tag: Key(item.id.toString()),child: Image.network(item.image))
              ),
            ),

              ClipPath(
                clipper: ClipingMethod(),
                child: Container(
                  height:400,

                  child: Column(
                    children: [
                      Text(item.name,style: TextStyle(
                     // color:Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      ),
                      Text(item.desc,style: TextStyle(
                          fontSize: 10
                      ),
                      )
                    ],
                  ),
                ),
              ),

          ],
        ),
      ),

    );
  }
}

class ClipingMethod extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w=size.width;
    double h=size.height;
    Path path0 = Path();
   /* path0.moveTo(0,size.height*0.0060);
   path0.quadraticBezierTo(size.width*0.2221,size.height*0.1885,size.width*0.4987,size.height*0.2020);

    path0.quadraticBezierTo(size.width*0.7831,size.height*0.1865,size.width,0);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(0,size.height*0.0060000);*/
    path0.moveTo(0, size.height*0.0060);
    path0.lineTo(0, h);
    path0.lineTo(w, h);
    path0.lineTo(w, 0);

  return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
