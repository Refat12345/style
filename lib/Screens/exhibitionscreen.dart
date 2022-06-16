import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:style/Screens/setting.dart';
import '../cubit/app_cubit.dart';
import 'filterscreen.dart';

class ExhibitionScreen extends StatelessWidget {
  const ExhibitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);

        return DefaultTabController(
          length: 2,
          child: Scaffold(backgroundColor: Colors.grey.shade300,
            appBar: AppBar(
              title:const  Text("AllExhibition"),
              actions: [
                IconButton(
                  icon: const Icon(Icons.workspaces_filled),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          backgroundColor: Colors.green,
                        content:  Column(
                          mainAxisSize: MainAxisSize.min,

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              child:const Text(  "Filter ",style: TextStyle(fontSize: 26,color: Colors.black),),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));

                              },
                            ),
                            TextButton(
                              child:const Text(  "Refresh ",style: TextStyle(fontSize: 26,color: Colors.black),),
                              onPressed: () {
                              },
                            ),
                            TextButton(
                              child:const Text(  "Search ",style: TextStyle(fontSize: 26,color: Colors.black),),
                              onPressed: () {

                              },
                            ),
                          ],
                        ) ,
                      ),
                    );



                  },
                ),
              ],
              backgroundColor: Color(0xFF0F4857),
              elevation: 10,
              bottom: TabBar(
                onTap: (index) {
                  cubit.changeIndex(index, context);
                },
                tabs: const [
                  Tab(
                    icon: Icon(Icons.wallet_giftcard_sharp),
                    text: 'AllExhibition',
                  ),
                  Tab(
                    icon: Icon(Icons.wallet_giftcard_sharp),
                    text: 'FavoritesExhibition',
                  ),
                ],
              ),
            ),

            drawer: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'User Name',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('My Invites',
                        style: TextStyle(fontSize: 19)),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('My Requests',
                        style: TextStyle(fontSize: 19)),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title:
                        const Text('Edit Info', style: TextStyle(fontSize: 19)),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title:
                        const Text('Log Out', style: TextStyle(fontSize: 19)),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              ),
            ),
            body: ListView(
              children: [
                Container(
                  height: 130,
                  child: Card(
                    color: Colors.white38,
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 110,
                            ),
                            Center(
                                child: Text(
                              "Name",
                              style: TextStyle(fontSize: 30),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Center(
                                child: Text(
                              "Ends: ",
                              style: TextStyle(fontSize: 30),
                            )),
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Status ",
                              style: TextStyle(fontSize: 30),
                            ),
                            Icon(Icons.library_add_check_sharp)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 130,
                  child: Card(
                    color: Colors.white38,
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 110,
                            ),
                            Center(
                                child: Text(
                              "Name",
                              style: TextStyle(fontSize: 30),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Center(
                                child: Text(
                              "Ends: ",
                              style: TextStyle(fontSize: 30),
                            )),
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Status ",
                              style: TextStyle(fontSize: 30),
                            ),
                            Icon(Icons.library_add_check_sharp)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 130,
                  child: Card(
                    color: Colors.white38,
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 110,
                            ),
                            Center(
                                child: Text(
                              "Name",
                              style: TextStyle(fontSize: 30),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Center(
                                child: Text(
                              "Ends: ",
                              style: TextStyle(fontSize: 30),
                            )),
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Status ",
                              style: TextStyle(fontSize: 30),
                            ),
                            Icon(Icons.library_add_check_sharp)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 130,
                  child: Card(
                    color: Colors.white38,
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 110,
                            ),
                            Center(
                                child: Text(
                              "Name",
                              style: TextStyle(fontSize: 30),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Center(
                                child: Text(
                              "Ends: ",
                              style: TextStyle(fontSize: 30),
                            )),
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              "Status ",
                              style: TextStyle(fontSize: 30),
                            ),
                            Icon(Icons.library_add_check_sharp)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
