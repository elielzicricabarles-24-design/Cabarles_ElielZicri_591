import 'package:flutter/material.dart';
import 'screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://tunstkszuxnqvhuptuof.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1bnN0a3N6dXhucXZodXB0dW9mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ4MTczMTQsImV4cCI6MjA5MDM5MzMxNH0.mP5BMeWy0fHp7UJuQ0_tohirLx86agQFVLS_J_lApsU',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Midterm Exam',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: StudentPage(),
    );
  }
}
