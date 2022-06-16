import 'package:flutter/material.dart';

import 'filterscreen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 11,
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.black,fontSize: 30),
        ),
        titleSpacing: 75,
        backgroundColor: Colors.orange,
      ),
      body: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Card(color: Colors.white30,
              elevation: 10,
              child: Row(
                children:  [
                  Icon(Icons.filter_alt, size: 30),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                  child:Text(  "Filter ",style: TextStyle(fontSize: 44,color: Colors.black),),
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));

                     },
                  ),
                ],
              ),
            ),
           const SizedBox(height: 12,),
            Card(color: Colors.white30,

              elevation: 10,

              child: Row(
                children:  [
                  const Icon(Icons.refresh, size: 30),
                  const SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    child:const Text(  "Refresh ",style: TextStyle(fontSize: 44,color: Colors.black),),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
         const SizedBox(height: 12,),
            Card(color: Colors.white30,
              elevation: 10,

              child: Row(
                children:  [
                  Icon(Icons.search, size: 30),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    child:Text(  "Search ",style: TextStyle(fontSize: 44,color: Colors.black),),
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
