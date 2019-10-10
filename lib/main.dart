import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text(" Long List View"),)
            ,
            body: getListView()
        ));
  }}

  List<String> getlistElements(){
    var items =  List<String>.generate(1000, (counter)=> "Item $counter");
    return items;
  }

  Widget getListView(){
  var listitems = getlistElements();
  var Listview = ListView.builder(itemBuilder: (Context, index){
    return ListTile(
      title: Text(listitems[index]),
      leading: Icon(Icons.tram),
    );
  });
  return Listview;
  }