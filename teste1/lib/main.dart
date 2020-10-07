import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _friendsVal;
  List _friendsName = ["Jacó", "Henrique", "Flutterando"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Denúncia"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 10, 7, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: 'Digite seu nome completo',
                  suffixIcon: Icon(Icons.people_outline),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(20), // Ajusta como precisar
                  )),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: 'Digite seu e-mail',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    // Ajusta como precisar
                  )),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: 'Digite seu CPF',
                  suffixIcon: Icon(Icons.perm_identity),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(20), // Ajusta como precisar
                  )),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: 'Data da ocorrência',
                  suffixIcon: Icon(Icons.date_range),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    // Ajusta como precisar
                  )),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                labelText: 'Observações',
                suffixIcon: Icon(Icons.chat_bubble_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                  hint: Text("Select Name"),
                  dropdownColor: Colors.grey,
                  elevation: 5,
                  isExpanded: true,
                  value: _friendsVal,
                  style: TextStyle(color: Colors.black, fontSize: 17.0),
                  onChanged: (value) {
                    setState(() {
                      _friendsVal = value;
                    });
                  },
                  items: _friendsName.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
