import 'package:flutter/material.dart';
import 'package:flutter_bs_ad_calendar/flutter_bs_ad_calendar.dart';

class NepaliCalender extends StatefulWidget {
  const NepaliCalender({super.key});

  @override
  State<NepaliCalender> createState() => _NepaliCalenderState();
}

class _NepaliCalenderState extends State<NepaliCalender> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nepali Calendar",style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,),),
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: Icon(Icons.calendar_month),
        // leading: Icon(Icons.NepaliCalender),
      ),
      body: FlutterBSADCalendar(
        initialDate: DateTime.now(), // Today's date
        firstDate: DateTime(1970),  // First allowed date
        lastDate: DateTime(2024, 12, 31), // Updated last date to be after the initial date
        onMonthChanged: (date, event) {
          setState(() {
            selectedDate = date;
          });
        },
        onDateSelected: (date, events) {
          setState(() {
            selectedDate = date;
          });
        },
      ),
    );
  }
}
