import 'package:flutter/material.dart';
import 'screen/chat_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://eyduoaxkewobzgeiwpfe.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV5ZHVvYXhrZXdvYnpnZWl3cGZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY2MjA0OTUsImV4cCI6MjA5MjE5NjQ5NX0.RuGwJmoQVfiXXghzfMWdZECUGoF9cWU_0ZV8vDHOFsM',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const ChatPage(username: 'Mark'),
    );
  }
}
