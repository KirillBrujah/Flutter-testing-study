import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_testing_study/models/models.dart';


import 'services/services.dart';
import 'ui/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Testing Study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(title: 'Fetch Data Example'),
    );
  }
}
