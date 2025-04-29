import 'package:flutter/material.dart';
import 'package:giggles_safer_web/home/home.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Supabase.initialize(
      url: 'https://jcxuvgntdithatrpywac.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpjeHV2Z250ZGl0aGF0cnB5d2FjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDU5MjM2NjQsImV4cCI6MjA2MTQ5OTY2NH0.d6SSs6fU18b69PC38tL4KzsAwEUHdOnycbAMEb6Wi0Q',
    );
  } catch (e) {
    debugPrint('Error initializing Supabase: $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
