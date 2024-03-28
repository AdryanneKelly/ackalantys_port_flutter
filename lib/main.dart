import 'package:ackalantys/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://bkbdzkmdssiupqktwbik.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrYmR6a21kc3NpdXBxa3R3YmlrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE2MzI5NTQsImV4cCI6MjAyNzIwODk1NH0.o7g8BZbgEhnpbzr8I41gt0tvAlaRfniKFFXMgkbxjAA',
  );
  runApp(AppWidget());
}