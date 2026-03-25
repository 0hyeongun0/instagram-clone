import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'screens/feed/feed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: const FeedScreen());
  }
}
