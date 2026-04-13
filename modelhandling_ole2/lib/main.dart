import 'package:flutter/material.dart';
import 'package:modelhandling/screen/user_list_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ebkisniwioecogtqnlby.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVia2lzbml3aW9lY29ndHFubGJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzExNjg1NjgsImV4cCI6MjA4Njc0NDU2OH0.Ip1cftr-N-4MBJno4IExiO62jEhZAUQYhWFzX8wO0Xg',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: ProductScreen(),
    );
  }
}
