import 'dart:convert';

import 'package:http/http.dart' as http;

class MessageController {
  final url =
      "https://discord.com/api/webhooks/1234473417139294309/gciaJy7MNUF74AN5gmLIq3fpM8Y1hBd7fPEN5OamPbh9dn68iwi65r4XjNHGRjZ0bRnv";
  Future<void> sendMessage({required String message, required String email, required String name}) async {
    // try {
    //   await supabase.from('messages').insert({
    //     'message': message,
    //     'email': email,
    //     'name': name,
    //   });
    //   print('Message sent');
    // } on PostgrestException catch (e) {
    //   print('Error: ${e.message}');
    // } catch (e) {
    //   print('Error: $e');
    // }
    final response = await http.post(Uri.parse(url),
        body: jsonEncode({
          "embeds": [
            {
              "description": message,
              "color": 15258703,
              "fields": [
                {"name": "Email", "value": email, "inline": true},
                {"name": "Nome", "value": name, "inline": true}
              ]
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    print(response.body);
  }
}
