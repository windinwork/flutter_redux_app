/**
 * 加载列表
 */
class FetchListAction {
  List<String> list;

  FetchListAction(this.list);
}

/**
 * 选择列表
 */
class SelectItemAction {
  String selected;

  SelectItemAction(this.selected);
}
