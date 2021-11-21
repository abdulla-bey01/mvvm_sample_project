import '/app/network/abstraction/i_network_manager.dart';
import '/data/dtos/bag_item_dto.dart';
import '/data/dtos/rgb_color_dto.dart';
import '/data/remote/abstraction/i_bag_network_manager.dart';

class FakeBagNetworkManager extends INetworkManager
    implements IBagNetworkManager {
  FakeBagNetworkManager() : super(baseUrl: 'my-ecommerce.com');

  @override
  Future<List<BagItemDto>> getItems() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    List<BagItemDto> _items = [
      BagItemDto.createNamed(
        id: 1,
        productId: 1,
        productTitle: 'Iphone 12 pro max',
        productPrice: 801.0,
        color: RgbColorDto.createNamed(0, 0, 0, 'Black'),
        productImageUrl:
            'https://unsplash.com/photos/tze1kKj7Lgg/download?force=true',
      ),
      BagItemDto.createNamed(
        id: 2,
        productId: 2,
        productTitle: 'Beats dre 3',
        productPrice: 299.9,
        color: RgbColorDto.createNamed(255, 255, 255, 'White'),
        productImageUrl:
            'https://unsplash.com/photos/vISNAATFXlE/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTV8fGJlYXRzJTIwaGVhZHBob25lc3x8MHx8fHwxNjM3NTAyMjQw&force=true',
      ),
      BagItemDto.createNamed(
        id: 3,
        productId: 3,
        productTitle: 'Beats dre 3',
        productPrice: 299.9,
        color: RgbColorDto.createNamed(255, 255, 255, 'White'),
        productImageUrl:
            'https://unsplash.com/photos/vISNAATFXlE/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTV8fGJlYXRzJTIwaGVhZHBob25lc3x8MHx8fHwxNjM3NTAyMjQw&force=true',
      ),
      BagItemDto.createNamed(
        id: 4,
        productId: 4,
        productTitle: 'Beats dre 3',
        productPrice: 299.9,
        color: RgbColorDto.createNamed(255, 255, 255, 'White'),
        productImageUrl:
            'https://unsplash.com/photos/vISNAATFXlE/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTV8fGJlYXRzJTIwaGVhZHBob25lc3x8MHx8fHwxNjM3NTAyMjQw&force=true',
      ),
    ];
    return _items;
  }
}
