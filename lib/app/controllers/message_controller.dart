import 'package:supabase_flutter/supabase_flutter.dart';

class MessageController {
  final supabase = Supabase.instance.client;
  Future<void> sendMessage({required String message, required String email, required String name}) async {
    try {
      await supabase.from('messages').insert({
        'message': message,
        'email': email,
        'name': name,
      });
      print('Message sent');
    } on PostgrestException catch (e) {
      print('Error: ${e.message}');
    } catch (e) {
      print('Error: $e');
    }
  }
}
