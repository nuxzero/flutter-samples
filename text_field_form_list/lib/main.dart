import 'package:flutter/material.dart';
import 'package:text_field_formz_list/text_field_list.dart';
import 'package:text_field_formz_list/text_field_sliver_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const TextFieldList(),
      home: const TextFieldSliverList(),
    );
  }
}
