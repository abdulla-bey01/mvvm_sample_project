import '/data/remote/abstraction/fake/i_fake_categories_network_manager.dart';
import '/data/dtos/category_dto.dart';

class FakeCategoriesNetworkManager extends IFakeCategoriesNetworkManager {

  @override
  Future<List<CategoryDto>> getAll() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return [
      CategoryDto.createNamed(
        id: 1,
        title: 'Smartphones',
        slogan: null,
        salePercent: 50,
        chidren: [
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 1',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 2',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 3',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
        ],
      ),
      CategoryDto.createNamed(
        id: 2,
        title: 'Displays',
        slogan: null,
        chidren: [
          CategoryDto.createNamed(
            id: 3,
            title: 'Ips',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/Hpaq-kBcYHk/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTd8fG1lY2hhbmljJTIwa2V5Ym9hcmR8fDB8fHx8MTYzNzQ0NTA3Mw&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Lcd',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: '3K',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: '4K',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
        ],
      ),
      CategoryDto.createNamed(
        id: 3,
        title: 'Laptops',
        slogan: null,
        salePercent: 36,
        chidren: [
          CategoryDto.createNamed(
            id: 3,
            title: 'Ultrabook',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Macbooks',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Gaming',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Office',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
        ],
      ),
      CategoryDto.createNamed(
        id: 4,
        title: 'Keyboard',
        slogan: null,
        chidren: [
          CategoryDto.createNamed(
            id: 3,
            title: 'Mechanic',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/kt-wA0GDFq8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8bWVjaGFuaWMlMjBrZXlib2FyZHx8MHx8fHwxNjM3NDQ1MDcz&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Apple',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/CjS3QsRuxnE/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8YXBwbGUlMjBrZXlib2FyZHx8MHx8fHwxNjM3NDI1ODM1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Slim',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Voicy',
            slogan: null,
            imageUrl:
                'https://unsplash.com/photos/KXIWqtmvfxg/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjM3NDM0ODI1&force=true',
          ),
        ],
      ),
    ];
  }

  @override
  Future<CategoryDto> getById(id) async {
    return CategoryDto.createNamed(id: 1, title: 'Smartphones', slogan: null);
  }
}
