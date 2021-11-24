import 'package:flutter/material.dart';

import '/ui/view_models/abstraction/base_view_model.dart';
import '/app/commands/concrency/get_all_categories_command.dart';
import '/app/commands/concrency/select_category_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '/ui/view_models/abstraction/i_categories_view_model.dart';

class CategoriesViewModel extends ICategoriesViewModel {
  CategoriesViewModel({UpdateUi updateUi})
      : super(
          updateUi: updateUi,
          categories: [],
          getAllCategoriesRequestState: RequestState.default_,
          getAllCategoriesCommand: GetAllCategoriesCommand(),
          selectCategoryCommand: SelectCategoryCommand(),
          pageController: PageController(initialPage: 0),
          selectedCategoryIndex: 0,
        );

  @override
  void initialize() {}
}
