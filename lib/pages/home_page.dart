import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_all_in_one/core/store.dart';
import 'package:flutter_all_in_one/models/cart.dart';
import 'package:flutter_all_in_one/models/model.dart';
import 'package:flutter_all_in_one/utils/route.dart';
import 'package:flutter_all_in_one/widgets/drawer.dart';
import 'package:flutter_all_in_one/widgets/style_widgets_gridview.dart';
import 'package:flutter_all_in_one/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

import '../widgets/style_widgets.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 // final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  final url = "https://api.npoint.io/f49ee8946c1289213765";
  @override
  void initState(){
    super.initState();
    loadData();
  }
var catalog; //can view with only list
  loadData() async{
    //await Future.delayed(Duration(seconds: 2));
   //var catalogJson=await rootBundle.loadString("assets/file/catalog.json");
    var response= await http.get(Uri.parse(url));
    var catalogJson=response.body;
   var decodeData=jsonDecode(catalogJson);
   var productData=decodeData["products"];
   catalog=List.from(productData)
       .map<Item>((item) => Item.fromMap(item))
       .toList();
   CatalogModel.items=List.from(productData)
       .map<Item>((item) => Item.fromMap(item))
       .toList();
  // print(decodeData);
    setState((){});
  }
  final _cart = (VxState.store as MyStore).cart;
  @override
  Widget build(BuildContext context) {
   // final dummylist=List.generate(5, (index) => CatalogModel.item[0],); same item print
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home Page')),
      actions: [
        ChangeMyTheme()
      ],),
      floatingActionButton: VxConsumer(
        mutations: {AddMutation,RemoveMutation},
        notifications: {},

        builder:(context,_) => FloatingActionButton(

          onPressed: () {
          Navigator.pushNamed(context, MyRoute.cartpage);
        },
         // backgroundColor: Colors.black,
        child: Icon(CupertinoIcons.cart),
        ).badge(size: 20,count: _cart.items.length),
      ),
      body:(catalog!=null && catalog.isNotEmpty)?
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context,index){
              // final item=list[index];
               return CatalogModel2(catalog: catalog[index],);
               /* return Card(
                  clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Text(item.name),
                        child: Image.network(item.image),
                      footer: Text(item.price.toString()),
                    )
                );*/
              },
              itemCount: catalog.length,
          )
      :Center(child: CircularProgressIndicator(),),
      drawer: MyDrawer(),
    );
  }


}













// test theme switching system
class ChangeMyTheme extends StatefulWidget {
  const ChangeMyTheme({Key? key}) : super(key: key);

  @override
  State<ChangeMyTheme> createState() => _ChangeMyThemeState();
}

class _ChangeMyThemeState extends State<ChangeMyTheme> {
  @override
  Widget build(BuildContext context) {

   bool s=true;

    return Switch(value: s, onChanged: (value){
      setState((){
        print("VALUE : $s");
          s=value;
          s?MyTheme.darkTheme:MyTheme.lightTheme;
      }
      );
    });
  }
}
