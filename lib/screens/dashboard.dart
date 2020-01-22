import 'package:flutter/material.dart';

import 'contacts_list.dart';


class Dashboard extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://cdn.pixabay.com/photo/2019/12/05/11/10/snowman-4674856_960_720.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Theme.of(context).primaryColor,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactsList(),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 100,
                    width: 150,
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.people, color: Colors.white,size: 24,),
                        Text('Contatcs', style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}