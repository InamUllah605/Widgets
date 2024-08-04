import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green.shade300,),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Center(child: CircleAvatar(radius: 120,)),
        ),
          Container(color: Colors.green
            ,)
      ],),
    );
  }
}
