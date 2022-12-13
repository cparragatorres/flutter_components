import 'package:flutter/material.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/home_page.dart';

class CalendarInputPage extends StatefulWidget {
  const CalendarInputPage({Key? key}) : super(key: key);

  @override
  State<CalendarInputPage> createState() => _CalendarInputPageState();
}

class _CalendarInputPageState extends State<CalendarInputPage> {
  TextEditingController _dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CalendarPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(),
            TextField(
              controller: _dateTimeController,
              toolbarOptions: ToolbarOptions(
                copy: false,
                paste: false,
                cut: false,
                selectAll: false,
              ),
              // readOnly: true,
              decoration: InputDecoration(
                hintText: "Fecha de Nacimiento",
                suffixIcon: Icon(Icons.date_range),
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                selectDate();
              },
            ),
          ],
        ),
      ),
    );
  }

  selectDate() async{
    DateTime? matasquita = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (matasquita !=null) {
      _dateTimeController.text = matasquita.toString().substring(0,10);
    }
  }
}
