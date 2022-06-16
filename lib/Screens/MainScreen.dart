import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Demo'),
          ),
          body: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  padding:  EdgeInsets.all(12),
                  child: ImageSlideshow(
                    width: double.infinity,
                    height: 200,
                    initialPage: 0,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.grey,
                    children: [
                      Image.asset(
                        'assets/images/car.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/phone.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/laptop.jpg',
                        fit: BoxFit.cover,
                      ),
                    ],
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },
                    autoPlayInterval: 3000,
                    isLoop: true,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7,0,0,0),
              child: const  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Top Categories",style: TextStyle(fontSize: 20))
              //    child: IconButton(onPressed: (){}, icon: Icon(Icons.forward),),
                ),
            ),
           //   IconButton(onPressed: () {}, icon: const Icon(Icons.forward,)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  itemBuilder: (context, index) {
                    return buildCard(index);
                  },
                ),
              ),

            const   Padding(
                padding: const EdgeInsets.fromLTRB(7,0,0,0),
                child: const  Align(
                    alignment:  Alignment.centerLeft,
                    child: Text("DisCount",style: TextStyle(fontSize: 20))
                  //    child: IconButton(onPressed: (){}, icon: Icon(Icons.forward),),
                ),
              ),

              SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 12,
                    );
                  },
                  itemBuilder: (context, index) {
                    return buildCard2(index);
                  },
                ),
              ),
            ],
          )),
      debugShowCheckedModeBanner: false,

    );
  }

  Widget buildCard(int index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/car.jpg',
              height: 80,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text('Card $index'),
        ],
      );

  Widget buildCard2(int index) => Card(
        child: Column(
          children: [
            Image.asset(
              'assets/images/laptop.jpg',
              fit: BoxFit.cover,
              height: 160,
              width: 160,
            ),
            Text(
              'This is Our Product ',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              'The Price Is  ',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      );
}
