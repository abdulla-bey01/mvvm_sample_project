import '/data/remote/abstraction/i_products_network_manager.dart';
import '/data/remote/concrency/fake/fake_products_network_manager.dart';

import '/app/auth/concrency/reqres/reqres_auth_network_manager.dart';
import '../auth/abstraction/i_auth_network_manager.dart';
import '/data/unit-of-work/abstraction/i_unit_of_work.dart';
import '/data/unit-of-work/concrency/shared_preferences_unit_of_work.dart';

class AppDiContainer {
  late IUnitOfWork unitOfWork;
  late IAuthNetworkManager authNetworkManager;
  late IProductsNetworkManager productsNetworkManager;

  static AppDiContainer get instance => _instance ??= AppDiContainer._();
  static AppDiContainer? _instance;
  AppDiContainer._() {
    //if it is wanted to use SharedPreferences for data, use SharedPreferencesUnitOfWork();
    unitOfWork = SharedPreferencesUnitOfWork();
    //if it is wanted to use SharedPreferences for data
    //unitOfWork = HiveUnitOfWork();
    authNetworkManager = ReqResAuthNetworkManager();
    productsNetworkManager = FakeProductsNetworkManager();
  }
}
