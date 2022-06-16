import 'package:flutter/material.dart';
class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 11,
        title:const Text("Filter",          style: TextStyle(color: Colors.black,fontSize: 30),
      ), titleSpacing: 80,
        backgroundColor: Colors.orange,),
      body: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Card(color: Colors.white30,
              elevation: 10,
              child: Row(
                children:  [
                  const  Icon(Icons.start, size: 30),
                  const SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    child:const Text(  "By Start ",style: TextStyle(fontSize: 44,color: Colors.black),),
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
                  const Icon(Icons.incomplete_circle, size: 30),
                  const SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    child:const Text(  "By End ",style: TextStyle(fontSize: 44,color: Colors.black),),
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
                  const Icon(Icons.area_chart, size: 30),
                  const  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    child:const Text(  "By Area ",style: TextStyle(fontSize: 44,color: Colors.black),),
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
                  const  Icon(Icons.drive_file_rename_outline, size: 30),
                  const  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    child:const Text(  "By Name ",style: TextStyle(fontSize: 44,color: Colors.black),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
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
//
// import 'package:flutter/material.dart';
// class FilterScreen extends StatelessWidget {
//   const FilterScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 11,
//         title:const Text("Filter",          style: TextStyle(color: Colors.black,fontSize: 30),
//         ), titleSpacing: 80,
//         backgroundColor: Colors.orange,),
//       body: Padding(
//
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//
//           children: [
//             Card(color: Colors.white30,
//               elevation: 10,
//               child: Row(
//                 children:  [
//                   const  Icon(Icons.start, size: 30),
//                   const SizedBox(
//                     width: 12,
//                   ),
//                   TextButton(
//                     child:const Text(  "By Start ",style: TextStyle(fontSize: 44,color: Colors.black),),
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 12,),
//             Card(color: Colors.white30,
//
//               elevation: 10,
//
//               child: Row(
//                 children:  [
//                   const Icon(Icons.incomplete_circle, size: 30),
//                   const SizedBox(
//                     width: 12,
//                   ),
//                   TextButton(
//                     child:const Text(  "By End ",style: TextStyle(fontSize: 44,color: Colors.black),),
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 12,),
//             Card(color: Colors.white30,
//               elevation: 10,
//               child: Row(
//                 children:  [
//                   const Icon(Icons.area_chart, size: 30),
//                   const  SizedBox(
//                     width: 12,
//                   ),
//                   TextButton(
//                     child:const Text(  "By Area ",style: TextStyle(fontSize: 44,color: Colors.black),),
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 12,),
//             Card(color: Colors.white30,
//               elevation: 10,
//
//               child: Row(
//                 children:  [
//                   const  Icon(Icons.drive_file_rename_outline, size: 30),
//                   const  SizedBox(
//                     width: 12,
//                   ),
//                   TextButton(
//                     child:const Text(  "By Name ",style: TextStyle(fontSize: 44,color: Colors.black),),
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
//                     },
//                   ),
//                 ],
//               ),
//             ),
//
//           ],
//         ),
//       ),
//
//     );
//   }
// }
