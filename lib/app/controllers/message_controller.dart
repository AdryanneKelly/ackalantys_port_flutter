import 'dart:convert';

import 'package:ackalantys/app/client/http_client.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';

class MessageController {
  IHttpClient httpClient = HttpClient();
  Future<void> sendMessage({required String message, required String email, required String name}) async {
    final response = await httpClient.post(
        url: UrlUtils.botUrl,
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
        }));
  }
}
