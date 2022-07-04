import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String images='https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2FydG9vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60';
    return Drawer(


        child: Column(

          children: [

            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(images)),
                accountName: Text('Riday'),
                accountEmail: Text('riday@g.com')
            ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.black,),
              title: Text('Home',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              )),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.black,),
              title: Text('Profile',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  )),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.black,),
              title: Text('Email Me',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  )),
            )

          ],
      ),
    );
  }
}
