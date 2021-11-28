import '../../abstraction/fake/i_fake_liked_items_network_manager.dart';
import '/data/dtos/liked_item_dto.dart';
import '/app/helpers/enums/attachment_type_enum.dart';
import '/data/dtos/attachment_dto.dart';
import '/data/dtos/category_dto.dart';
import '/data/dtos/color_vs_attachment_dto.dart';
import '/data/dtos/product_dto.dart';
import '/data/dtos/vendor_dto.dart';
import '/data/dtos/rgb_color_dto.dart';

class FakeLikedItemsNetworkManager extends IFakeLikedItemsNetworkManager {

  @override
  Future<List<LikedItemDto>> getItems() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    ProductDto _product = ProductDto.createNamed(
      id: 1,
      title: 'Iphone 12 pro max',
      description: 'iphone 12 pro max description',
      price: 1000.0,
      raiting: 5,
      ratedBy: 13,
      salePercent: 19.9,
      categories: [
        CategoryDto.createNamed(
          id: 1,
          title: 'Sale',
          slogan: 'Super summer sale',
          salePercent: 0,
        ),
        CategoryDto.createNamed(
          id: 2,
          title: 'New',
          slogan: 'You’ve never seen it before!',
          salePercent: 0,
        ),
        CategoryDto.createNamed(
          id: 3,
          title: 'Smartphones',
          salePercent: 0,
          slogan: 'Smarter than you',
        ),
      ],
      vendor: VendorDto.createNamed(
        id: 1,
        name: 'Apple Store Azerbaijan',
      ),
      attachmentsWithColors: [
        ColorVsAttachmentDto.createNamed(
            id: 1,
            color: RgbColorDto.createNamed(255, 255, 255, 'white'),
            attachments: [
              AttachmentDto.createNamed(
                id: 1,
                url:
                    'https://unsplash.com/photos/tze1kKj7Lgg/download?force=true',
                type: AttachmentType.jpg,
              ),
            ]),
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(188, 34, 142, 'Red'),
          attachments: [
            AttachmentDto.createNamed(
              id: 1,
              url:
                  'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
              type: AttachmentType.jpg,
            ),
          ],
        ),
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(12, 128, 211, 'red'),
          attachments: [
            AttachmentDto.createNamed(
              id: 1,
              url:
                  'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
              type: AttachmentType.jpg,
            ),
          ],
        ),
      ],
    );

    List<LikedItemDto> _likedItems = [];

    for (var i = 0; i < 13; i++) {
      _product.id = i;
      final _copiedProduct = ProductDto.copy(_product);
      final _likedItem = LikedItemDto.createNamed(
          product: _copiedProduct, isExistedInStock: (i % 2) == 0);
      _likedItems.add(_likedItem);
    }
    return _likedItems;
  }
}
