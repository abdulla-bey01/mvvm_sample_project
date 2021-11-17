import '/app/network/abstraction/i_network_manager.dart';


abstract class IRegResNetworkManager extends INetworkManager {
  IRegResNetworkManager() : super(baseUrl: 'https://reqres.in');
}
