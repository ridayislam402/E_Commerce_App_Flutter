
import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/pages/cart_page.dart';
import 'package:flutter_all_in_one/pages/login_page.dart';
import 'package:flutter_all_in_one/pages/home_page.dart';
import 'package:flutter_all_in_one/utils/route.dart';
import 'package:flutter_all_in_one/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     // home: Homepage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      //darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoute.home,
      routes: {
        '/':(context)=>LoginPage(),
        MyRoute.login:(context)=>LoginPage(),
        MyRoute.home:(context)=>Homepage(),
        MyRoute.cartpage:(context)=>CartPage(),
      },
    );
  }
}
