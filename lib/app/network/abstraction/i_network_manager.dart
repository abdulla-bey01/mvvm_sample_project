import 'package:http/http.dart' as http;

abstract class INetworkManager {
  late final String baseUrl;
  final http.Client client = http.Client();
  INetworkManager({
    required this.baseUrl,
  });
}
