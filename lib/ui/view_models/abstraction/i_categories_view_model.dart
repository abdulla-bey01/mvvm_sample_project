import 'package:flutter/material.dart';

import '/app/commands/abstraction/i_base_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/app/reactive_helper_models/reactive_category_model.dart';
import 'base_view_model.dart';

abstract class ICategoriesViewModel extends BaseViewModel {
  late List<ReactiveCategoryModel?>? categories;
  RequestState getAllCategoriesRequestState;
  late IBaseCommand? getAllCategoriesCommand;
  late IBaseCommand? selectCategoryCommand;
  late PageController pageController;
  late int selectedCategoryIndex;
  ICategoriesViewModel({
    UpdateUi updateUi,
    required this.categories,
    required this.getAllCategoriesRequestState,
    required this.getAllCategoriesCommand,
    required this.selectCategoryCommand,
    required this.pageController,
    required this.selectedCategoryIndex,
  }) : super(updateUi: updateUi);
  ReactiveCategoryModel? get selectedCategory =>
      categories?.firstWhere((element) => element!.selected);
}
