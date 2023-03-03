import 'package:http/http.dart' as http;

class HttpUtil {
  final String _baseUrl;
  final Map<String, String> _defaultHeaders;

  HttpUtil({required String baseUrl, Map<String, String>? defaultHeaders})
      : _baseUrl = baseUrl,
        _defaultHeaders = defaultHeaders ?? {};

  Future<http.Response> get(String path,
      {Map<String, String>? headers, Map<String, String>? params}) async {
    final uri = Uri.parse('$_baseUrl$path').replace(queryParameters: params);
    final response =
        await http.get(uri, headers: {..._defaultHeaders, ...?headers});
    return response;
  }

  Future<http.Response> post(String path, dynamic body,
      {Map<String, String>? headers, Map<String, String>? params}) async {
    final uri = Uri.parse('$_baseUrl$path').replace(queryParameters: params);
    final response = await http.post(uri,
        headers: {..._defaultHeaders, ...?headers}, body: body);
    return response;
  }

  Future<http.Response> put(String path, dynamic body,
      {Map<String, String>? headers, Map<String, String>? params}) async {
    final uri = Uri.parse('$_baseUrl$path').replace(queryParameters: params);
    final response = await http.put(uri,
        headers: {..._defaultHeaders, ...?headers}, body: body);
    return response;
  }

  Future<http.Response> delete(String path,
      {Map<String, String>? headers, Map<String, String>? params}) async {
    final uri = Uri.parse('$_baseUrl$path').replace(queryParameters: params);
    final response =
        await http.delete(uri, headers: {..._defaultHeaders, ...?headers});
    return response;
  }
}
