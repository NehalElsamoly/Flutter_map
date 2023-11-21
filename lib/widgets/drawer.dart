import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
      ),
      drawerScrimColor: Colors.white70,
      drawer:  Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("nehal"),
                accountEmail: Text("nehal elsamoly123@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.pinkAccent,child:Text("nono")),
            ),
            ListTile(
              title:Text("home") ,
              leading:Icon(Icons.home) ,
              onTap: () {},
            ),
            ListTile(
              title:Text("home") ,
              leading:Icon(Icons.home) ,
              onTap: () {},
            ),ListTile(
              title:Text("home") ,
              leading:Icon(Icons.home) ,
              onTap: () {},
            ),ListTile(
              title:Text("home") ,
              leading:Icon(Icons.home) ,
              onTap: () {},
            )

          ],
        ),
      ),
      body: Container(),
    );
  }
}
