import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskaya/core/services/shared_preferences_singleton.dart';
import 'package:taskaya/core/utils/app_routes.dart';

void main() async {
  await Hive.initFlutter();
  SharedPreferencesSingleton.init();
  // Hive.registerAdapter(NoteModelAdapter());
  // var box = await Hive.openBox<NoteModel>(noteBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Taskaya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routerConfig: AppRoutes.router,
    );
  }
}
