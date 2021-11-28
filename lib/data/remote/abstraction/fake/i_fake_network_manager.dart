import '/app/network/abstraction/i_network_manager.dart';

abstract class IFakeNetworkManager extends INetworkManager {
  IFakeNetworkManager() : super(baseUrl: 'my-ecommerce.com');
}
