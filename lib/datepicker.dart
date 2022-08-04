import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class MyDate extends StatefulWidget {
  const MyDate({Key? key}) : super(key: key);

  @override
  State<MyDate> createState() => _MyDateState();
}

class _MyDateState extends State<MyDate> {
  DateTime? date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () async {
                var d = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020, 2),
                    lastDate: DateTime(2025, 1));

                setState(() {
                  date = d;
                });
              },
              child: Text(
                  "Open Date Picker - ${date?.day}-${date?.month}-${date?.year}?'N/A'}"))
          // child:  Text("Open Date Picker - ${DateFormat("dd-MM-yyyy").format(date!)}??'N/A'}"))
        ],
      ),
    );
  }
}
