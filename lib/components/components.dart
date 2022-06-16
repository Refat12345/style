


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

defualtBottom(
{
   Color backgroun=Colors.blue,
  double width=double.infinity,
  required String text,
bool isUppercase=true

}
    )
{
  return Container(
    width: width,
    color: backgroun,
    child: MaterialButton(
      onPressed: (){},
      child: Text(isUppercase?text.toUpperCase():text,style: TextStyle(color: Colors.white),),
    ),
  );
}

Widget BulidItem(context,a)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(

    children: [
      Container(
          width: 120,
          height: 120,
          child: CircleAvatar(radius: 30,)),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text('${a['title']}',style: Theme.of(context).textTheme.bodyText1,)),
              SizedBox(
                height: 4,
              ),
              Text('${a['id']}',style: TextStyle(fontSize: 17,color: Colors.black),),
            ],
          ),
        ),
      ),
    ],
  ),
);

Widget defualtFormField(
{required TextEditingController controller,
  required TextInputType type,
   required String lable,
  //required IconData prefix,
  required dynamic prefix,
 required dynamic o,
  IconData? suffix,
  required dynamic s,




  })=> TextFormField
  (

onChanged:o ,
validator: s ,
  controller: controller,
  keyboardType: type,
  decoration: InputDecoration(
    labelText: lable,
    prefixIcon: Icon(prefix),
    suffixIcon: Icon(suffix),

    border: OutlineInputBorder(),

  ),
);

void navigatTo(context,widget)=>Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => widget));


Widget aritcalBuilder(list)=> ListView.separated(
    physics: BouncingScrollPhysics(),
    itemBuilder: (context,index)=>BulidItem(context,list[index]),

    separatorBuilder: (context,index)=>Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: 1,
      ),
    ),
    itemCount: list.length);

void navigatAndFinsh (context,Widget)
{
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Widget), (route) => false);
}
void NavigateTo(context,widget)
{
  Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
}

Widget buildArticleItem(artical)=> Padding(
  padding: EdgeInsets.all(20),

  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(

              image: NetworkImage('${artical['urlToImage']}'),
              fit: BoxFit.cover,
            )

        ),
      ),
      SizedBox(width: 20,),
      Expanded(child:  Container(
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                '${artical['title']}' ,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text('${artical['publishedAt']}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],

        ),
      ), )

    ],
  ),
);

Widget MyDivider()=> Padding(
  padding: const EdgeInsetsDirectional.only(start: 20),
  child: Container(
    color: Colors.black,
    width: double.infinity,
    height: 1,
  ),
);
