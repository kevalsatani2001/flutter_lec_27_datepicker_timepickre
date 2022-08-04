import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTime extends StatefulWidget {
  const MyTime({Key? key}) : super(key: key);

  @override
  State<MyTime> createState() => _MyTimeState();
}

class _MyTimeState extends State<MyTime> {
  TimeOfDay? time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () async {
                var t = await showTimePicker(
                    context: context, initialTime: time ?? TimeOfDay.now());

                setState(() {
                  time = t;
                });
              },
              // child:  Text("Open Date Picker - ${date?.day}-${date?.month}-${date?.year}??'N/A'}"))
              child: Text(
                  "Open Time Picker - ${time?.hour}:${time?.minute}??'N/A'}"))
        ],
      ),
    );
  }
}
