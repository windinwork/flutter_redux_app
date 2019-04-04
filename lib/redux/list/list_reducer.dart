import 'list_action.dart';
import 'list_state.dart';

ListState listReducer(ListState pre, dynamic action) {
  if (action is FetchListAction) {
    return ListState(true, action.list, pre.selected);
  }
  if (action is SelectItemAction) {
    return ListState(pre.isInit, pre.list, action.selected);
  }
  return pre;
}
