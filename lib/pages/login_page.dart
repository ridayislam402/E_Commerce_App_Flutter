import 'package:flutter/material.dart';
import 'package:flutter_all_in_one/utils/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool buttonani=false;
  final _formkey=GlobalKey<FormState>();
  movetoHome() async{
    if(_formkey.currentState!.validate()){
      setState((){
        buttonani=true;
      });
      await Future.delayed(Duration(seconds: 1));
       Navigator.pushNamed(context, MyRoute.home);
     /* setState((){
        buttonani=false;
      });*/
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Material(

        //color: Colors.deepPurple,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
            children: [
              Image.asset("assets/images/loginimage.png",fit: BoxFit.fill,height: 200,),
              SizedBox(height: 10,),
              Text('Wellcome $name',style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
                fontSize: 29,
              ),),
              SizedBox(height: 5,),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                child: Column(
                  children:[
                    TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cancot be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                      name=value;
                      setState((){

                      });
                      },

                  ),
                    SizedBox(height: 7,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cancot be empty";
                        }else if(value.length<6){
                          return "Password length should be minimum 6";
                        }
                        return null;
                      },
                    )
                  ]
                ),
              ),
              SizedBox(height: 32,),
              /*ElevatedButton(
               style: ElevatedButton.styleFrom(
               primary: Colors.deepPurple,
               maximumSize: Size(200, 40),
              ),
              onPressed: (){
               Navigator.pushNamed(context, MyRoute.home);
              },
              child: Text('Login')
              )*/
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(buttonani?50:8),
                child: InkWell(
                  splashColor: Colors.red,

                  onTap: () async{
                   movetoHome();
                   },

                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width:buttonani ? 100 : 150,
                    alignment: Alignment.center,
                    child: buttonani?Icon(Icons.done): Text('Login',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                    ),
                    ),
                    /*decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(buttonani?50:8),
                    ),*/
                  ),
                ),
              )
            ],
            ),
          ),
        ),
      ),
    );
  }
}
