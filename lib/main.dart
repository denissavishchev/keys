import 'package:flutter/material.dart';
import 'package:keys/reordeable_listview.dart';

import 'local_key_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ReorderableListview());
  }
}
