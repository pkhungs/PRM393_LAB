import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}
class _InputControlsDemoState extends State<InputControlsDemo> {
  double sliderValue = 50;
  bool switchValue = false;
  String gender = 'Male';
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Controls')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Slider: ${sliderValue.toInt()}'),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Enable Feature'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            RadioListTile(
              title: Text('Male'),
              value: 'Male',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'Female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            ElevatedButton(
              child: Text('Pick Date'),
              onPressed: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  initialDate: DateTime.now(),
                );
                if (date != null) {
                  setState(() {
                    selectedDate = date;
                  });
                }
              },
            ),
            if (selectedDate != null)
              Text('Selected Date: ${selectedDate!.toLocal()}'),
          ],
        ),
      ),
    );
  }
}
