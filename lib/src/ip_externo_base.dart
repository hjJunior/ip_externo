import 'dart:convert';
import 'injector.dart';

final _httpClient = Injector().client;
final _apiUrl = 'https://api.ipify.org/?format=json';

class IpExterno {
  static Future<String> get ipAddress async {
    final apiResult = await _httpClient.get(_apiUrl);
    return json.decode(apiResult.body)['ip'];
  }
}
