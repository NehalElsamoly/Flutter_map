import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp66 extends StatelessWidget {
  const MyApp66({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Dismissable ListView'),
        ),
        body: MyDismissibleListView(),

    );
  }
}

class MyDismissibleListView extends StatefulWidget {
  @override
  _MyDismissibleListViewState createState() => _MyDismissibleListViewState();
}

class _MyDismissibleListViewState extends State<MyDismissibleListView> {
  List<String> items = List.generate(5, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(items[index]), // Unique key for each item
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Item dismissed'),
              ),
            );
          },
          background: Container(
            color: Colors.red,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 16.0),
          ),
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}