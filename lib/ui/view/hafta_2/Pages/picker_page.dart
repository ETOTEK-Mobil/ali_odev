import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key});

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {

  var cities = [
    "Samsun","İstanbul","Mersin","İzmir","Ankara","Kahramanmaraş"
    ];
  String selectedCity = "Samsun";
  String date = "${DateTime.now().month.toString().padLeft(2,'0')}/${DateTime.now().day.toString().padLeft(2,'0')}/${DateTime.now().year.toString()}";
  String hour = "${DateTime.now().hour.toString().padLeft(2,'0')}:${DateTime.now().minute.toString().padLeft(2,'0')}";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pickers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select City:"),
            const Spacer(flex: 5 ,),
            DropdownButton<String> (icon: const Icon(Icons.arrow_drop_down),
              isExpanded: true,
              value: selectedCity,
              items: cities.map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
                
              }).toList(),
              onChanged: (String? selectedData){
                setState(() {
                   selectedCity = selectedData!;
                });
              }
              ),
            const Spacer(flex: 5 ,),
            const Text("Select Time:"),
            const Spacer(flex: 5 ,),
            ListTile(
              tileColor: const Color.fromARGB(255, 227, 227, 227),
              title: Text(hour),
              trailing: const Icon(Icons.access_time),
              onTap: (){
                showTimePicker(
                  context: context, 
                  initialTime: TimeOfDay.fromDateTime(DateTime.now())
                  ).then((value){
                    setState(() {
                      hour = "${value!.hour.toString().padLeft(2,'0')}:${value.minute.toString().padLeft(2,'0')}";
                    });
                  });
              },
            ),
            const Spacer(flex: 5 ,),
            const Text("Select Date:"),
            const Spacer(flex: 5 ,),
            ListTile(
              tileColor: const Color.fromARGB(255, 227, 227, 227),
              title: Text(date),
              trailing: const Icon(Icons.date_range),
              onTap: (){
                showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050)
                  ).then((value){
                    setState(() {
                      date = "${value!.month.toString().padLeft(2,'0')}/${value.day.toString().padLeft(2,'0')}/${value.year.toString()}";
                    });
                  });
              },
            ),
            const Spacer(flex: 5 ,),
            IntrinsicWidth(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.md),
                  child: Text(
                    "Selected City:    $selectedCity"
                    "\nSelected Time:  $hour"
                    "\nSelected Date:  $date"
                    ),
                ),
              ),
            ),
            const Spacer(flex: 70,)
          ],
        ),
      ),
    );
  }
}