import '/app/helpers/enums/attachment_type_enum.dart';
import '/app/network/abstraction/i_network_manager.dart';
import '/data/dtos/attachment_dto.dart';
import '/data/dtos/category_dto.dart';
import '/data/dtos/color_vs_attachment_dto.dart';
import '/data/dtos/product_dto.dart';
import '/data/dtos/rgb_color_dto.dart';
import '/data/dtos/vendor_dto.dart';

import '../../abstraction/i_products_network_manager.dart';

class FakeProductsNetworkManager extends INetworkManager
    implements IProductsNetworkManager {
  FakeProductsNetworkManager() : super(baseUrl: 'my-ecommerce.com');

  @override
  Future<List<ProductDto>> getAll() async {
    await Future.delayed(const Duration(seconds: 2));
    List<ProductDto> _products = [];
    ProductDto _product = ProductDto.createNamed(
      id: 1,
      title: 'Iphone 12 pro max',
      description: 'iphone 12 pro max description',
      price: 3900.0,
      raiting: 5,
      categories: [
        CategoryDto.createNamed(id: 1, title: 'Apple'),
        CategoryDto.createNamed(id: 2, title: 'Smartphones'),
      ],
      vendor: VendorDto.createNamed(
        id: 1,
        name: 'Apple Store Azerbaijan',
      ),
      attachmentsWithColors: [
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(255, 255, 255),
          attachment: AttachmentDto.createNamed(
            id: 1,
            url:
                'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
            type: AttachmentType.jpg,
          ),
        ),
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(188, 34, 142),
          attachment: AttachmentDto.createNamed(
            id: 1,
            url:
                'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
            type: AttachmentType.jpg,
          ),
        ),
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(12, 128, 211),
          attachment: AttachmentDto.createNamed(
            id: 1,
            url:
                'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
            type: AttachmentType.jpg,
          ),
        ),
      ],
    );
    for (var i = 0; i < 13; i++) {
      _products.add(_product);
    }
    return _products;
  }

  @override
  Future<ProductDto> getById(id) async {
    ProductDto _product = ProductDto.createNamed(
      id: 1,
      title: 'Iphone 12 pro max',
      description: 'iphone 12 pro max description',
      price: 3900.0,
      raiting: 5,
      categories: [
        CategoryDto.createNamed(id: 1, title: 'Apple'),
        CategoryDto.createNamed(id: 2, title: 'Smartphones'),
      ],
      vendor: VendorDto.createNamed(
        id: 1,
        name: 'Apple Store Azerbaijan',
      ),
      attachmentsWithColors: [
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(255, 255, 255),
          attachment: AttachmentDto.createNamed(
            id: 1,
            url:
                'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
            type: AttachmentType.jpg,
          ),
        ),
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(188, 34, 142),
          attachment: AttachmentDto.createNamed(
            id: 1,
            url:
                'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
            type: AttachmentType.jpg,
          ),
        ),
        ColorVsAttachmentDto.createNamed(
          id: 1,
          color: RgbColorDto.createNamed(12, 128, 211),
          attachment: AttachmentDto.createNamed(
            id: 1,
            url:
                'https://unsplash.com/photos/Gx34eWExGD8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGlwaG9uZTEyJTIwcHJvJTIwbWF4fHwwfHx8fDE2MzcxNjk3NTY&force=true',
            type: AttachmentType.jpg,
          ),
        ),
      ],
    );
    return _product;
  }
}
