import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskaya/constats.dart';
import 'package:taskaya/features/home/data/models/note_model.dart';
import 'package:taskaya/features/home/presentation/views/home_view.dart';
import 'package:taskaya/features/splash/presentation/views/splash_view.dart';

void main() async {
  await Hive.initFlutter();
  // Hive.registerAdapter(NoteModelAdapter());
  // var box = await Hive.openBox<NoteModel>(noteBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taskaya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
