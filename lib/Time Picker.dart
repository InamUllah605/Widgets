import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _timeOfDay=TimeOfDay.now();
  //DateTime _dateTime= DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: Text('Time Picker',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,backgroundColor: Colors.blue,),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_timeOfDay.format(context),
                      style: TextStyle(fontSize: 40,color: Colors.blue),),
                    SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: () async{
                     TimeOfDay? _newTime= await showTimePicker(context: context,
                          initialTime: _timeOfDay,
                     );
                     if(_newTime!=null){
                       setState(() {
                         _timeOfDay=_newTime;
                       });
                     }
                    }, child: Text('Select Time',style: TextStyle(color: Colors.black),))
                   ],),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
