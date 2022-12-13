import 'package:flutter/material.dart';

class CapturarValoresDelInputPage extends StatefulWidget {
  @override
  State<CapturarValoresDelInputPage> createState() =>
      _CapturarValoresDelInputPageState();
}

class _CapturarValoresDelInputPageState
    extends State<CapturarValoresDelInputPage> {
  String name = "";
  TextEditingController _nameController = TextEditingController(text: "Por Defecto!");

  getNameData(){
    print(_nameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capturando Inputs"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //1er textfield
            TextField(
              decoration: InputDecoration(
                label: Text("Ingresa tu nombre"),
              ),
              onChanged: (String value) {
                //name se actualiza al ingresar caracter por caracter
                name = value;
                print(name);
              },
              //El onTap es cuando haces Click para escribir
              onTap: () {
                print("ON TAP!");
              },
            ),
            //2do textField
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                label: Text("Ingresa tu nombre"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // print(_nameController.text);
                // _nameController.text="Carlos";
                getNameData();

              },
              child: Text("Mostrar Valor!"),
            ),
            SizedBox(height: 30.0),
            TextField(
              keyboardType: TextInputType.number,
              // keyboardType: TextInputType.emailAdress,
              // keyboardType: TextInputType.url,
              // keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                label: Text("Teclados"),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
