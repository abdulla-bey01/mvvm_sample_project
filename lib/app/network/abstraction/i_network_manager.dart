import 'package:http/http.dart' as http;

abstract class INetworkManager {
  late final String baseUrl;
  INetworkManager({
    required this.baseUrl,
  });
  final http.Client client = http.Client();
}
