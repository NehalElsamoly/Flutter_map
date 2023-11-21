import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map/widgets/drawer.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
int index=0;
final pages=[
  drawer(),
  Center(child:Text("page2"),),
  Center(child:Text("page3"),),
  Center(child:Text("page4"),),


];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[index],
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 2,
        selectedIndex: index,
        onDestinationSelected: (index)=>setState(() =>this.index=index
        ),
        destinations: [
         NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'favourite'),
          NavigationDestination(icon: Icon(Icons.account_box_rounded), label: 'account'),
          NavigationDestination(icon: Icon(Icons.production_quantity_limits), label: 'products'),
        ],
      ),
    );
  }
}
