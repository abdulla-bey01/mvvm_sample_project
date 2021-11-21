import '../../../app/commands/concrency/update_item_count_in_bag_command.dart';
import '/app/commands/concrency/get_bag_item_command.dart';
import '/app/helpers/enums/request_state_enum.dart';
import '../abstraction/i_bag_page_view_model.dart';

class BagPageViewModel extends IBagPageViewModel {
  BagPageViewModel()
      : super(
          items: [],
          getBagItemsRequestState: RequestState.default_,
          getBagItemCommand: GetBatItemsCommand(),
          updateItemCountInBagCommand: UpdateItemCountInBagCommand(),
        );
}
