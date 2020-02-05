import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main()async{
  List data =await getData();
//  String myData=data[0]['title'];
  print(data[1]['email']);
  print(data[1]['name']);
  print(data[1]['address']['geo']);


  runApp(new MaterialApp(

      home:new Scaffold(
        backgroundColor: Colors.pink.shade900,
        appBar: new AppBar(
          title: new Text("user"),
          backgroundColor: Colors.deepPurple,
        ),
//      body: new Center(
//        child: new Text('data :$myData',style: TextStyle(
//          fontStyle: FontStyle.italic,
//          fontSize: 16.0,
//
//
//
//        ),),
//      ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(top: 44.0)),
              new Text('Name:${data[1]['name']}',
                style: TextStyle(color: Colors.lightGreen,
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic

                ),

              )
              ,
              new Text('Email:${data[1]['email']}',
                style: TextStyle(color: Colors.lightGreen,
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic

                ),
              ),
              new Text('stree:${data[1]['address']['street']}',
                style: TextStyle(color: Colors.lightGreen,
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic

                ),

              ),
              new Text('geo:${data[1]['address']['geo']}',
                style: TextStyle(color: Colors.lightGreen,
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic

                ),),

            ],
          ),
        ),
      )


  ));

}
Future<List> getData() async {
  String myurl = "https://jsonplaceholder.typicode.com/users";
  http.Response response = await http.get(myurl);
  return json.decode(response.body);
}

//Future<Null> showMoreInfo(BuildContext context,
//    String value1,
//    String value2,
//    String value3,
//    String value4,
//
//
//    )async {
//
//  return showDialog<void>(
//    context: context,
//    barrierDismissible: false, // user must tap button!
//    builder: (BuildContext context) {
//      return AlertDialog(
//        title: Text('$value3'),
//        content: SingleChildScrollView(
//          child: ListBody(
//            children: <Widget>[
//              Text('$value4'),
//              Text('userId:$value2'),
//              Text('id:$value1'),
//
//            ],
//          ),
//        ),
//        actions: <Widget>[
//          FlatButton(
//            child: Text("cancel"),
//            onPressed: () {
//              Navigator.of(context).pop();
//            },
//          ),
//        ],
//      );
//    },
//  );
//}
//child: new ListView.builder(
//itemBuilder: (BuildContext context ,int position){
//if(position.isOdd)return new Divider(color: Colors.black,);
//final newposition=position ~/2;
//return new ListTile(
//title:new Text(
//'${data[newposition]['title']}',
//style: TextStyle(
//fontSize: 22.0,
//color: Colors.deepPurple,
//),
//),
//subtitle:new Text(
//'${data[newposition]['body']}',
//style: TextStyle(
//fontSize: 12.0,
//color: Colors.brown,
//),
//),
//leading: new CircleAvatar(
//child:new Text('p ${data[newposition]['id']}',),
//backgroundColor: Colors.amber,
//foregroundColor: Colors.cyan,
//),
//onTap: (){showMoreInfo(context,
//'${data[newposition]['id']}',
//'${data[newposition]['userId']}',
//'${data[newposition]['title']}',
//'${data[newposition]['body']}',
//
//
//)
//;},
//);
//}
//),