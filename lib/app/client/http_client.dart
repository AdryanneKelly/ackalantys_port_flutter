import 'package:http/http.dart' as http;

abstract class IHttpClient {
  Future get(String url);
  Future post({required String url,required dynamic body});
}

class HttpClient implements IHttpClient {
  final httpClient = http.Client();
  @override
  Future get(String url) async {
    return httpClient.get(Uri.parse(url));
  }

  @override
  Future post({required String url, required dynamic body}) async {
    return httpClient.post(Uri.parse(url), body: body, headers: {"Content-Type": "application/json"});
  }
}
