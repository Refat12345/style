import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllExhibition  extends StatelessWidget {
  const AllExhibition ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("all"),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              hintText: 'product',
              label: Text('name'),
              hintStyle: TextStyle(color: Colors.brown,fontSize: 18),
              labelStyle: TextStyle(color: Colors.orange,fontSize: 18),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 2,color: Colors.green),

              ),
              floatingLabelStyle: TextStyle(fontSize: 18,color: Colors.orange),
              contentPadding: EdgeInsets.all(8),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 2,color: Colors.green),
              )
            ),

          ),
        ],
      )
    );
  }
}
