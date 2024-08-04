import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Detail%20Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('D I Khan City',style: TextStyle(color: Colors.green.shade700,fontSize: 15,fontWeight: FontWeight.bold),),
      leading: Icon(Icons.location_on_outlined),
        actions: [
          Icon(Icons.subject)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Find The Best',style: TextStyle(fontSize: 30),),
          Text('Food Around You',style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            TextFormField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search your favourit food',hintStyle: TextStyle(color: Colors.grey),
            ),
            ),
            SizedBox(height: 30,),
            Text('Find',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(height: 40,width: 80,decoration: BoxDecoration(
                color: Colors.green,borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('Salads',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),),
              Container(height: 40,width: 80,decoration: BoxDecoration(
                  color: Colors.black12,borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text('Hot sale',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),),
              Container(height: 40,width: 80,decoration: BoxDecoration(
                  color: Colors.black12,borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text('popularity',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),)
            ],),
             SizedBox(height: 20,),
             Row(children: [
               InkWell(onTap: (){
                 Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailScreen()));
               },
                 child: Expanded(child: Container(height: 220,decoration: BoxDecoration(
                   color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10)),
                   child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     CircleAvatar(backgroundColor: Colors.green,radius: 50,),
                       SizedBox(height: 10,),
                       Text('Avocada salad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [Text('20min',style: TextStyle(color: Colors.black38),),
                           SizedBox(width: 30,), Text('4.5',style: TextStyle(color: Colors.black38),),],),
                       SizedBox(height: 15,),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [Text('Pkr120.00',style: TextStyle(color: Colors.black38),),
                           SizedBox(width: 30,),
                         Container(decoration: BoxDecoration(
                           color: Colors.green,borderRadius: BorderRadius.circular(100)
                         ),
                             child: Padding(
                               padding: const EdgeInsets.all(7),
                               child: Icon(Icons.add,color: Colors.white,),
                             ))
                         ],),
                   ],),
                  )),
               ),
               SizedBox(width: 20,),
               Expanded(child: Container(height: 220,decoration: BoxDecoration(
                   color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10)),
                 child: Column(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CircleAvatar(backgroundColor: Colors.green,radius: 50,),
                     SizedBox(height: 10,),
                     Text('Fruits salad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [Text('20min',style: TextStyle(color: Colors.black38),),
                         SizedBox(width: 30,), Text('4.5',style: TextStyle(color: Colors.black38),),],),
                     SizedBox(height: 15,),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [Text('Pkr100.00',style: TextStyle(color: Colors.black38),),
                         SizedBox(width: 30,),
                         Container(decoration: BoxDecoration(
                             color: Colors.green,borderRadius: BorderRadius.circular(100)
                         ),
                             child: Padding(
                               padding: const EdgeInsets.all(7),
                               child: Icon(Icons.add,color: Colors.white,),
                             ))
                       ],),
                   ],),
               )),
             ],)

        ],),
      ),
    );
  }
}
