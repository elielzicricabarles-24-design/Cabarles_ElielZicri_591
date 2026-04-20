import 'package:flutter/material.dart';
import 'screen/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://fhucnpkwirwyxrifbapp.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZodWNucGt3aXJ3eXhyaWZiYXBwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0MTgyODAsImV4cCI6MjA5MDk5NDI4MH0.86GgGHRDqGPvtONUBpJrBWqweYazFZggZ9hOo28H1BA',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authy',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
