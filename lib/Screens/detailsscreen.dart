// import 'dart:developer';
// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
//
// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         body: Column(
//           children: [
//             Image.asset(
//               'assets/images/car.jpg',
//               height: 480,
//               fit: BoxFit.fill,
//             ),
//             Container(
//
//               height: 280,
//               color: Colors.amber,
//
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: const [
//                         Text(
//                           "Nike Blazer Mid ",
//                           style: TextStyle(
//                             fontSize: 30,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 50,
//                         ),
//                         Text(
//                           " 100 ",
//                           style: TextStyle(fontSize: 30),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     const Text("data data data data data data data data"
//                         "data data data data data data data data"
//                         "data data data data data"
//                         "data data data data data ",style: TextStyle(fontSize: 20),),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            'https://media.hypedc.com/article/lybm2/ramadan_module_site2.jpg',
            height: 600,
            fit: BoxFit.fill,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            height: 110,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Nike Blazer Mid ",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        " 100 ",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text("data data data data data data data data"
                      "data data ddata data "),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
