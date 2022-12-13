import 'package:flutter/material.dart';
import 'package:flutter_components/pages/calendar_input_page.dart';
import 'package:flutter_components/pages/capturar_valores_del_input_page.dart';
import 'package:flutter_components/pages/general_inputs_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/password_inputs_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ItemComponentWidget(
            title: "General-Inputs",
            toPage: GeneralInputsPage(),
          ),
          ItemComponentWidget(
            title: "Password-Inputs",
            toPage: PasswordInputsPage(),
          ),
          ItemComponentWidget(
            title: "Capturar Valores Del Input",
            toPage: CapturarValoresDelInputPage(),
          ),
          ItemComponentWidget(
            title: "Calendar Input Page",
            toPage: CalendarInputPage(),
          ),
        ],
      ),
    );
  }
}

