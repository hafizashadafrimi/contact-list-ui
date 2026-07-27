import 'package:contact_list_ui/Contact_ListScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// aplication starts here
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Contact_listScreen(),
    );
  }
}
