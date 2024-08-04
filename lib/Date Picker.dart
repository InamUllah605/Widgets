import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dateTime= DateTime.now();
  //final DateFormat _dateFormat = DateFormat('EEEE d MMMM y');
  final DateFormat _dateFormat = DateFormat('EEEE d MMMM y');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date Picker',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,backgroundColor: Colors.teal,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(_dateFormat.format(_dateTime),
          style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(onPressed: () async{
            DateTime? _newDate = await showDatePicker(
                context: context,
                initialDate: _dateTime,
                firstDate: DateTime(1900),
                lastDate: DateTime(2100));
            if(_newDate!=null){
              setState(() {
                _dateTime=_newDate;
              });
            }
          }, child: Text('Get Date',style: TextStyle(color: Colors.cyan),))
        ],),
      ),
    );
  }
}
