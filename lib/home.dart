import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Container(
         padding: EdgeInsets.all(10),
        child: ListView(
          children: [InkWell(
            onTap: (){},
            child: Card(
              child: ListTile(
                title: Text('title'),
                subtitle: Text('content'),
              ),
            ),
          ),]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),),
      
      );
  }
}