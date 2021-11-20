import '/data/dtos/category_dto.dart';
import '/data/remote/abstraction/i_categories_network_manager.dart';

class FakeCategoriesNetworkManager extends ICategoriesNetworkManager {
  @override
  Future<List<CategoryDto>> getAll() async {
    await Future.delayed(const Duration(milliseconds: 500));

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
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 2',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 3',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 2,
            title: 'Smartphone sub 4',
            slogan: null,
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
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Lcs',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 3,
            title: '3K',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 3,
            title: '4K',
            slogan: null,
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
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Macbooks',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Gaming',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Office',
            slogan: null,
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
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Apple',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Slim',
            slogan: null,
          ),
          CategoryDto.createNamed(
            id: 3,
            title: 'Voicy',
            slogan: null,
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
